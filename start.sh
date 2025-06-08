if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/silentbyaru/silenthours/tree/TELEGRAM_FILES
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /silenthours
fi
cd /silenthours
pip3 install -U -r requirements.txt
echo "Starting silenthours...."
python3 bot.py
