target="avr"

v_binutils="=2.24-r3"
v_gcc="=4.8.3"
v_libc="=1.8.0"

export USE="-openmp"

crossdev \
\
  --binutils "${v_binutils}"  \
  --gcc      "${v_gcc}"       \
  --libc     "${v_libc}"      \
\
  --target ${target}          \
  --ov-output "/usr/portage"  \
  --portage "--quiet-build=n" \
  --stage4                    \
  -v
