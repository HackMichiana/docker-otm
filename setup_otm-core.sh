#! /bin/bash

mkdir /usr/local/otm
cd /usr/local/otm
git clone https://github.com/OpenTreeMap/otm-core.git
mv otm-core app

cd /usr/local/otm/app
pip install -r requirements.txt

