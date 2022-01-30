if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Zinan100/LISA /lisa
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /lisa
fi
cd /lisa
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
