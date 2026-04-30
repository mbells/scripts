#!/usr/bin/env python3
"""
Add script to remove trailing whitespace diffs

When dealing with (open source) projects that don't clean up
trailing whitespace, haveing the editor do it can make a mess
of the diff. This script undoes the whitespace changes.
"""
import subprocess, difflib, pathlib

root = pathlib.Path('.').resolve()
files = subprocess.check_output(['git','show','--name-only','--pretty=format:','HEAD'], text=True).splitlines()
files = [f for f in files if f.strip()]

changed_summary = []

for f in files:
    p = root / f
    try:
        old = subprocess.check_output(['git','show',f'HEAD~1:{f}'])
        new = subprocess.check_output(['git','show',f'HEAD:{f}'])
    except subprocess.CalledProcessError:
        continue

    try:
        old_text = old.decode('utf-8')
        new_text = new.decode('utf-8')
    except UnicodeDecodeError:
        continue

    old_lines = old_text.splitlines(keepends=True)
    new_lines = new_text.splitlines(keepends=True)

    sm = difflib.SequenceMatcher(a=old_lines, b=new_lines, autojunk=False)
    patched_lines = list(new_lines)
    offset = 0
    touched = 0

    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag != 'replace':
            continue
        if (i2 - i1) != (j2 - j1):
            continue
        for k in range(i2 - i1):
            o = old_lines[i1 + k]
            n = new_lines[j1 + k]
            # revert only trailing-space/tab differences
            if o.rstrip(' \t\r\n') == n.rstrip(' \t\r\n') and o != n:
                patched_lines[j1 + k] = o
                touched += 1

    if touched:
        cur_text = p.read_text(encoding='utf-8')
        if cur_text != new_text:
            # file has local differences; skip for safety
            print(f'SKIP_LOCAL_CHANGES {f}')
            continue
        p.write_text(''.join(patched_lines), encoding='utf-8')
        changed_summary.append((f, touched))

if not changed_summary:
    print('NO_TRAILING_WS_ONLY_CHANGES_FOUND')
else:
    for f, c in changed_summary:
        print(f'REVERTED {f} lines={c}')
