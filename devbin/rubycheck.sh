function run1chk() {
    CMD="ruby -d -v -i.:lib:test"
    if [ "X$2X" == "X-nX" ] ; then
        echo "$1: $(${CMD} $1 2>&1 | wc -l)"
    else
        ${CMD} $1 2>&1
    fi
}

# 7
#run1chk test/test-hashlike.rb $1

# 7
run1chk test/test-action.rb $1
exit
# 7
run1chk test/test-main.rb $1
# 7
run1chk test/test-parser-yaml.rb $1
# 7
run1chk test/test-util.rb $1

# 8
run1chk test/test-databinding.rb $1
# 8
run1chk test/test_logger.rb $1
# 8
run1chk test/test-metavalidator.rb $1
# 8
run1chk test/test-rule.rb $1
# 8
run1chk test/test-validator.rb $1
# 8
run1chk test/test-yaml-parser.rb $1

# 504
run1chk test/test.rb $1
# 852
run1chk test/test-users-guide.rb $1
