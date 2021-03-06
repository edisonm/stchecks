:- begin_tests(stchecks_1).

:- use_module(library(infer_meta)).
:- use_module(library(checker)).
:- use_module(library(check_wrong_dynamic)).
:- use_module(stchecks_hooks).

:- use_module(cwda).
:- use_module(cwdb).

test(cwd_1) :-
    check_results(wrong_dynamic, Results, [files([stchecks/tests/cwdb])]),
    assertion(Results = [_]).

:- end_tests(stchecks_1).
