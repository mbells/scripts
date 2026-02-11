
See docs: https://github.com/ideasman42/nerd-dictation

Installation (different that official):
```
sudo apt install pulseaudio-utils
sudo apt install ydotool

git clone https://github.com/ideasman42/nerd-dictation.git
cd nerd-dictation
wget https://alphacephei.com/kaldi/models/vosk-model-small-en-us-0.15.zip
unzip vosk-model-small-en-us-0.15.zip
mv vosk-model-small-en-us-0.15 model

uv venv
source .venv/bin/activate
uv pip install vosk


# Setup to run without passing in model parameter
mkdir -p ~/.config/nerd-dictation
mv model ~/.config/nerd-dictation/model
```

