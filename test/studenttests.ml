open Util.Assert
open Hellocaml

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let student_tests : suite =
  [
    Test
      ( "Student-Provided Tests For Problem 1-3",
        [
          ("case1", assert_eqf (fun () -> prob3_ans) 42);
          ("case2", assert_eqf (fun () -> 42 - 17) (prob3_case2 17));
          ("case3", assert_eqf (fun () -> prob3_case3) 64);
        ] );
    Test
      ( "Student-Provided Tests For Problem 4-3",
        [
          ( "case1",
            assert_eqf
              (fun () ->
                interpret
                  [ ("x", 1L); ("y", 2L); ("z", 3L) ]
                  (Add (Var "x", Mult (Var "y", Neg (Var "z")))))
              (-5L) );
        ] );
    Test
      ( "Student-Provided Tests For Problem 4-4",
        [
          ( "case1",
            assert_eqf
              (fun () ->
                interpret
                  [ ("x", 1L); ("y", 2L); ("z", 3L) ]
                  (optimize (Add (Var "x", Mult (Var "y", Neg (Var "z"))))))
              (-5L) );
        ] );
    Test
      ( "Student-Provided Tests For Problem 4-5",
        [
          ( "case1",
            assert_eqf
              (fun () ->
                run
                  [ ("x", 1L); ("y", 2L); ("z", 3L) ]
                  (compile (Add (Var "x", Mult (Var "y", Neg (Var "z"))))))
              (-5L) );
        ] );
  ]
