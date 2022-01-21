//
// Copyright © 2021 Arm Ltd and Contributors. All rights reserved.
// SPDX-License-Identifier: MIT
//

#pragma once

#include <iostream>

namespace armnn {
template <typename T> struct cos : public std::unary_function<T, T> {
  T operator()(const T &inputData) const { return std::cos(inputData); }
};

} // namespace armnn
