#!/bin/bash

test0() {
    assertEquals "32.0 °F" "$($EXEC 0)"
}

test100() {
    assertEquals "212.0 °F" "$($EXEC 100)"
}

test220() {
    assertEquals "428.0 °F" "$($EXEC 220)"
}

test37_2() {
    assertEquals "99.0 °F" "$($EXEC 37.2)"
}

test_55_8() {
    assertEquals "-68.4 °F" "$($EXEC -55.8)"
}

testNoArguments() {
    $($EXEC)
    assertEquals 1 $?
}

. shunit2
