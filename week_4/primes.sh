for n in "$@"; do
  i=2
  while [ $i -lt $n ]; do
    if (( $n % $i == 0 )); then
      echo "$n Is Not Prime"
      exit 0
    fi
    i=`expr $i + 1`
  done
  echo "$n Is prime"
  exit 1
done
