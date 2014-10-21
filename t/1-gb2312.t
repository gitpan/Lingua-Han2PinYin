# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Lingua-Han2PinYin.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 3;
BEGIN { use_ok('Lingua::Han2PinYin') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.


my $h2p = new Lingua::Han2PinYin();
is(ref($h2p) => 'Lingua::Han2PinYin', 'class');
my $pinyin = $h2p->han2pinyin("��");
is($pinyin, 'wo', 'correct');