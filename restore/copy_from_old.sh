echo "Meant to be modified prior to running"
echo "run from ~/new"
exit 2

SOURCE=mbells@192.168.2.37:/home/mbells/
# Should exclude these? --exclude=/.cache
EXCLUDES="--exclude=/Dropbox --exclude=/new"
#DRY=--dry-run


function restore_files() {
    rsync --progress --partial --recursive --delete --links --log-file=rsync.log \
        $DRY $EXCLUDES "$SOURCE" ~/ | tee rsync.out 2> >(tee rsync.err)
}

MAX_RETRIES=50
COUNT=0
while [ "$COUNT" -lt "$MAX_RETRIES" ]; do
    restore_files
    if [ "$?" -eq 0 ]; then
    	echo "Success!!"
        break
    fi
    if [ "$?" -ne 23 ]; then
        break
    fi
    echo "Restore failed, retrying..."
    sleep 30
    ((COUNT++))
done

if [ "$COUNT" -eq "$MAX_RETRIES" ]; then
    echo "Failed after $MAX_RETRIES"
    exit 1
fi

echo "Succeeded after $COUNT retries." 
