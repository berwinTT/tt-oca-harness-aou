// SPDX-License-Identifier: Apache-2.0
// SPDX-FileCopyrightText: © 2026 Tenstorrent USA Inc

// Profile announced for one RP in the DUT's ActivateReq (AoU v0.8 Ch. 11):
// PROFILE_CFG_RPn.PROFILE_ID / PROFILE_REV / PROFILE_OPT (-1 leaves a field
// unchanged). Program before ACTIVATE_START: the value is read when the
// ActivateReq leaves (MAS software-operation 7.1).
class aou_reg_profile_seq extends aou_reg_base_seq;
  `uvm_object_utils(aou_reg_profile_seq)

  int unsigned rp = 0;
  int          profile_id = -1;
  int          profile_rev = -1;
  int          profile_opt = -1;

  function new(string name = "aou_reg_profile_seq");
    super.new(name);
  endfunction

  task body();
    uvm_reg rg = rm.get_reg_by_name($sformatf("profile_cfg_rp%0d", rp));
    want(field(rg, "profile_id"), profile_id);
    want(field(rg, "profile_rev"), profile_rev);
    want(field(rg, "profile_opt"), profile_opt);
    commit();
  endtask
endclass
