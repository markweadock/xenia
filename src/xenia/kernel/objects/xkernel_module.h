/**
 ******************************************************************************
 * Xenia : Xbox 360 Emulator Research Project                                 *
 ******************************************************************************
 * Copyright 2013 Ben Vanik. All rights reserved.                             *
 * Released under the BSD license - see LICENSE in the root for more details. *
 ******************************************************************************
 */

#ifndef XENIA_KERNEL_XBOXKRNL_XKERNEL_MODULE_H_
#define XENIA_KERNEL_XBOXKRNL_XKERNEL_MODULE_H_

#include "xenia/emulator.h"
#include "xenia/kernel/objects/xmodule.h"

namespace xe {
namespace kernel {

class KernelState;

class XKernelModule : public XModule {
 public:
  XKernelModule(KernelState* kernel_state, const char* path);
  virtual ~XKernelModule();

  virtual void* GetProcAddressByOrdinal(uint16_t ordinal);

 protected:
  Emulator* emulator_;
  Memory* memory_;
  ExportResolver* export_resolver_;
};

}  // namespace kernel
}  // namespace xe

#endif  // XENIA_KERNEL_XBOXKRNL_XKERNEL_MODULE_H_
