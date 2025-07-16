

*** Test Cases ***
#ForLoop1
#    FOR    ${i}    IN RANGE     1   10
#        log to console    ${i}
#    END

#ForLoop2
#    FOR    ${i}    IN       1   2   3   4   5   6   7   8
#        log to console    ${i}
#    END

#ForLoop3
#    @{items}    create list    1    2   3   4   5
#    FOR    ${i}    IN   @{items}
#        log to console    ${i}
#    END


#ForLoop4
#    FOR    ${i}    IN     priya   nithya  lakshmi   aruna   kalavathi
#        log to console    ${i}
#    END


#ForLoop5
#    @{namelist}     create list  priya   nithya  lakshmi   aruna   kalavathi
#    FOR    ${i}    IN   @{namelist}
#        log to console    ${i}
#    END

ForLoop6
    @{namelist}     create list  priya   nithya  lakshmi   aruna   kalavathi
    FOR    ${i}    IN   @{namelist}
        log to console    ${i}
    exit for loop if    '${i}'=='lakshmi'
    END




