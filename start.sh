if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gowdru123/DemoBotx.git /DemoBotx
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DemoBotx
fi
cd /DemoBotx
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
