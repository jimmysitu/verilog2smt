Require Import SMTCoq.SMTCoq Bool List.
Import ListNotations BVList.BITVECTOR_LIST FArray.
Local Open Scope list_scope.
Local Open Scope farray_scope.
Local Open Scope bv_scope.

Section File.
  Lfsc_Theorem theo "design.smt2" "design.lfsc".
  Lfsc_Checker "design.smt2" "design.lfsc".
End File.
