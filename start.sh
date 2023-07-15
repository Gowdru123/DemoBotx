if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SujanCh564/DemoBot.git /DemoBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DemoBot
fi
cd /DemoBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
