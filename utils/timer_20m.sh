nohup $(while true; do
  sleep 20m
  notify-send Timer "20m have passed since last"
done) >/dev/null 2>&1 &
