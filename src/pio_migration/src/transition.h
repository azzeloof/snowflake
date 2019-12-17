typedef struct transition_t {
  uint8_t led;
  uint8_t currValue;
  uint8_t endValue;
  int8_t stepDistance;
  uint32_t stepTime;
  uint64_t currTime;
  uint64_t endTime;
} transition_t;