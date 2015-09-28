#!/bin/sh

IFS="
";
EN_QM_DIR=./en_qm
EN_TS_DIR=./en
TRANSIFEX_TRANSLATIONS=./translations

cd $(dirname $0)


# cleanup of old versions

rm -rf $EN_QM_DIR
rm -rf $EN_TS_DIR
rm -rf $TRANSIFEX_TRANSLATIONS
mkdir -p $EN_QM_DIR
mkdir -p $EN_TS_DIR

# download current version from device

scp nemo@192.168.2.15:/usr/share/translations/*-en_GB.qm $EN_QM_DIR

# convert from qm to ts

for i in $(ls -1 $EN_QM_DIR); do 
  fn=$(basename $i .qm)
  lconvert-qt5 -i $EN_QM_DIR/$fn.qm -o $EN_TS_DIR/$fn.ts -source-language en_GB -target-language en_GB
done


# download from transifex

./download_from_transifex.sh

# put it into right folder

for i in $(ls -1 $EN_TS_DIR); do 
  bname=$(basename $i)
  name=`echo $bname | sed  's/-en_GB.ts\$//'`
  tx_en_ts=$(printf "translations/jolla-cesky.%sts/en.ts" $name)
  tx_cs_ts=$(printf "translations/jolla-cesky.%sts/cs.ts" $name)
  ts_name=`printf "%s/%s" $EN_TS_DIR $bname`
  TX_DIR=$(dirname $tx_en_ts)

  if [ ! -d "TX_DIR" ]; then
    mkdir -p $TX_DIR
  fi
  cp $ts_name $tx_en_ts
done


# added/removed/stays

for i in $(ls -1 ./translations); do
  en=`printf ./translations/$i/en.ts`
  cs=`printf ./translations/$i/cs_CZ.ts`
  sk=`printf ./translations/$i/sk.ts`
  if [ ! -f "$en" ]; then
    echo "missing en version $i"
  fi

  if [ ! -f "$cs" ]; then
    echo "missing cs version $i"
  fi
  
done

# tx push -s
