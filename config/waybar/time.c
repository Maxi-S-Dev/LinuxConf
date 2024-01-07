// Copyright [2024] Maximilian Strigl

#include <stdio.h>
#include <time.h>

int main() {
  time_t current_time;
  struct tm *local_time;

  current_time = time(NULL);

  local_time = localtime(&current_time);

  (void)printf("%02d", local_time->tm_hour);

  return 0;
}
