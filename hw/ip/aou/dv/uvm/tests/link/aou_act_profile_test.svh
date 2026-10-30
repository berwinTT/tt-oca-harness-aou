// SPDX-License-Identifier: Apache-2.0
// SPDX-FileCopyrightText: © 2026 Tenstorrent USA Inc

// Profile exchange in the ActivateReq (AoU v0.8 Ch. 11): PROFILE_CFG_RPn sent,
// PROFILE_RMT_RPn stored (aou_act_profile_vseq).
class aou_act_profile_test extends aou_base_test;
  `uvm_component_utils(aou_act_profile_test)

  function new(string name, uvm_component parent);
    super.new(name, parent);
    vseq_type = "aou_act_profile_vseq";
    num_txns = 10;
  endfunction
endclass
