#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_8__ {char data[8];};
extern "C" void fpga_fifo_push_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_8(hls::stream<__cosim_T_8__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_8(hls::stream<__cosim_T_8__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_48__ {char data[48];};
extern "C" void fpga_fifo_push_48(__cosim_T_48__* val, hls::stream<__cosim_T_48__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_48(__cosim_T_48__* val, hls::stream<__cosim_T_48__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_48(hls::stream<__cosim_T_48__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_48(hls::stream<__cosim_T_48__>* fifo) {
  return fifo->exist();
}
