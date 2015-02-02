test_addze_1:
  #_ REGISTER_IN r4 1
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 1
  #_ REGISTER_OUT r4 1
  #_ REGISTER_OUT r6 0

test_addze_2:
  #_ REGISTER_IN r4 1
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 2
  #_ REGISTER_OUT r4 1
  #_ REGISTER_OUT r6 0

test_addze_3:
  #_ REGISTER_IN r4 12
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 12
  #_ REGISTER_OUT r4 12
  #_ REGISTER_OUT r6 0

test_addze_4:
  #_ REGISTER_IN r4 12
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 13
  #_ REGISTER_OUT r4 12
  #_ REGISTER_OUT r6 0

test_addze_5:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r6 0

test_addze_6:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r6 1

test_addze_7:
  #_ REGISTER_IN r4 0
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 0
  #_ REGISTER_OUT r6 0

test_addze_8:
  #_ REGISTER_IN r4 0
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  addze r3, r4
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 1
  #_ REGISTER_OUT r4 0
  #_ REGISTER_OUT r6 0
