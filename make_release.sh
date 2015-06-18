#!/bin/sh

ver=1.7
cs_dir=jolla-translations-cs_CZ
sk_dir=jolla-translations-sk_SK
TRANSIFEX_TRANSLATIONS=./translations

cs_rdir=$cs_dir-$ver
sk_rdir=$sk_dir-$ver

rm -rf $TRANSIFEX_TRANSLATIONS
./download_from_transifex.sh

mkdir -p $cs_dir
mkdir -p $sk_dir

for i in $(ls -1 $TRANSIFEX_TRANSLATIONS); do
  fn=$(basename $i)
  tsname=`echo $fn  | sed 's/jolla-cesky.\(.*\)ts/\1/'`
  cp -v $TRANSIFEX_TRANSLATIONS/$fn/cs_CZ.ts $cs_dir/${tsname}_cs_CZ.ts
  cp -v $TRANSIFEX_TRANSLATIONS/$fn/sk.ts $sk_dir/${tsname}_sk_SK.ts
done

cp -R ./$cs_dir ./$cs_rdir
cp -R ./$sk_dir ./$sk_rdir
tar cjf ./$cs_rdir.tar.bz2 ./$cs_rdir
tar cjf ./$sk_rdir.tar.bz2 ./$sk_rdir

echo "don't forget to update Makefile and spec file"