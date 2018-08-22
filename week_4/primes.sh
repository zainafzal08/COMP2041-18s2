for n in "$@"; do
  i=2
  while [ $i -lt $n ]; do
    if test `expr $n % $i` -eq 0; then
      exit 0
    fi
    i=`expr $i + 1`
  done
  echo "$n Is prime"
  exit 1
done
