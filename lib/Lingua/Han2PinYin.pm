package Lingua::Han2PinYin;

use strict;
use vars qw($VERSION @ISA @EXPORT);
use Exporter;
$VERSION = '0.02';
@ISA = qw(Exporter);
@EXPORT = qw(han2pinyin);

sub han2pinyin {
	my $han = shift;
	my $hcode = hex(unpack("H*",$han));
	return "XX" if ($hcode > 55298 or $hcode < 45217);
	my $pre_py;
	while(<DATA>) {
		my ($py, $isn) = split(/\,/);
		if ($hcode >= $isn) {
			$pre_py = $py;
			next;
		}
		return $pre_py;
	}
}

__DATA__
a,45217
ai,45219
an,45232
ang,45241
ao,45244
ba,45253
bai,45271
ban,45279
bang,45294
bao,45306
bei,45485
ben,45500
beng,45504
bi,45510
bian,45534
biao,45546
bie,45550
bin,45554
bing,45560
bo,45731
bu,45752
ca,45761
cai,45762
can,45773
cang,45780
cao,45785
ce,45790
ceng,45795
cha,45797
chai,45808
chan,45811
chang,45821
chao,45996
che,46005
chen,46011
cheng,46021
chi,46036
chong,46052
chou,46057
chu,46069
chuai,46247
chuan,46248
chuang,46255
chui,46261
chun,46266
chuo,46273
ci,46275
cong,46287
cou,46293
cu,46294
cuan,46298
cui,46301
cun,46309
cuo,46312
da,46318
dai,46324
dan,46498
dang,46513
dao,46518
de,46530
deng,46533
di,46540
dian,46559
diao,46575
die,46584
ding,46753
diu,46762
dong,46763
dou,46773
du,46780
duan,46795
dui,46801
dun,46805
duo,46814
e,46826
en,46839
er,46840
fa,47010
fan,47018
fang,47035
fei,47046
fen,47058
feng,47073
fo,47088
fou,47089
fu,47090
ga,47297
gai,47299
gan,47305
gang,47316
gao,47325
ge,47335
gei,47352
gen,47353
geng,47355
gong,47524
gou,47539
gu,47548
gua,47566
guai,47572
guan,47575
guang,47586
gui,47589
gun,47605
guo,47608
ha,47614
hai,47777
han,47784
hang,47803
hao,47806
he,47815
hei,47833
hen,47835
heng,47839
hong,47844
hou,47853
hu,47860
hua,48040
huai,48049
huan,48054
huang,48068
hui,48082
hun,48103
huo,48109
ji,48119
jia,48334
jian,48351
jiang,48553
jiao,48566
jie,48594
jin,48621
jing,48803
jiong,48828
jiu,48830
ju,48847
juan,48872
jue,48879
jun,48889
ka,49062
kai,49066
kan,49071
kang,49077
kao,49084
ke,49088
ken,49103
keng,49107
kong,49109
kou,49113
ku,49117
kua,49124
kuai,49129
kuan,49133
kuang,49135
kui,49143
kun,49316
kuo,49320
la,49324
lai,49331
lan,49334
lang,49349
lao,49356
le,49365
lei,49367
leng,49378
li,49381
lia,49577
lian,49578
liang,49592
liao,49603
lie,49616
lin,49621
ling,49633
liu,49647
long,49658
lou,49829
lu,49835
lv,49855
luan,49869
lue,49875
lun,49877
luo,49884
ma,49896
mai,49905
man,49911
mang,50082
mao,50088
me,50100
mei,50101
men,50117
meng,50120
mi,50128
mian,50142
miao,50151
mie,50159
min,50161
ming,50167
miu,50173
mo,50174
mou,50353
mu,50356
na,50371
nai,50378
nan,50383
nang,50386
nao,50387
ne,50392
nei,50393
nen,50395
neng,50396
ni,50397
nian,50408
niang,50415
niao,50417
nie,50419
nin,50426
ning,50427
niu,50595
nong,50599
nu,50603
nv,50606
nuan,50607
nue,50608
nuo,50610
o,50614
ou,50615
pa,50622
pai,50628
pan,50634
pang,50642
pao,50647
pei,50654
pen,50663
peng,50665
pi,50679
pian,50858
piao,50862
pie,50866
pin,50868
ping,50873
po,50882
pu,50891
qi,50906
qia,50942
qian,51107
qiang,51129
qiao,51137
qie,51152
qin,51157
qing,51168
qiong,51181
qiu,51183
qu,51191
quan,51366
que,51377
qun,51385
ran,51387
rang,51391
rao,51396
re,51399
ren,51401
reng,51411
ri,51413
rong,51414
rou,51424
ru,51427
ruan,51437
rui,51439
run,51442
ruo,51444
sa,51446
sai,51449
san,51453
sang,51619
sao,51622
se,51626
sen,51629
seng,51630
sha,51631
shai,51640
shan,51642
shang,51658
shao,51666
she,51677
shen,51689
sheng,51705
shi,51878
shou,51925
shu,51935
shua,52130
shuai,52132
shuan,52136
shuang,52138
shui,52141
shun,52145
shuo,52149
si,52153
song,52169
sou,52177
su,52180
suan,52193
sui,52196
sun,52207
suo,52210
ta,52218
tai,52389
tan,52398
tang,52416
tao,52429
te,52440
teng,52441
ti,52445
tian,52460
tiao,52468
tie,52473
ting,52476
tong,52648
tou,52661
tu,52665
tuan,52676
tui,52678
tun,52684
tuo,52687
wa,52698
wai,52705
wan,52707
wang,52724
wei,52734
wen,52929
weng,52939
wo,52942
wu,52951
xi,52980
xia,53177
xian,53190
xiang,53216
xiao,53236
xie,53416
xin,53437
xing,53447
xiong,53462
xiu,53469
xu,53478
xuan,53497
xue,53669
xun,53675
ya,53689
yan,53705
yang,53738
yao,53755
ye,53932
yi,53947
yin,54000
ying,54178
yo,54196
yong,54197
you,54212
yu,54233
yuan,54439
yue,54459
yun,54469
za,54481
zai,54484
zan,54491
zang,54495
zao,54498
ze,54512
zei,54516
zen,54517
zeng,54518
zha,54522
zhai,54698
zhan,54704
zhang,54721
zhao,54736
zhe,54746
zhen,54756
zheng,54772
zhi,54949
zhong,54992
zhou,55003
zhu,55017
zhua,55205
zhuai,55207
zhuan,55208
zhuang,55214
zhui,55221
zhun,55227
zhuo,55229
zi,55240
zong,55255
zou,55262
zu,55266
zuan,55274
zui,55276
zun,55280
zuo,55282

1;
__END__

=head1 NAME

Lingua::Han2PinYin - convert Chinese character to its pinyin(phoneticize, spell).

=head1 SYNOPSIS

  use Lingua::Han2PinYin;
  
  my $hanzi = "��"; # the Chinese character
  my $pinyin = han2pinyin("$hanzi"); # the corresponding spell
  #now $pinyin is 'wo';

=head1 DESCRIPTION

There is a Chinese document @ L<http://www.1313s.com/f/Han2PinYin.html>

=head1 RESTRICTIONS

for the uncommon character, the distribution of its' coding is B<NOT> continuous.
So we can only convert the 10082 common character.

as far as now, we can only convert one word and one word.

=head1 RETURN VALUE

if it's a common character, it returns its pinyin/spell.

if not, it returns 'XX';

=head1 TODO

deal with sentence.

=head1 BUGS

I'm not sure it works at all OS or different versions of perl.

Follows are tested, and welcome to report any bug or correction:

Win2000(SP4) + ActivePerl 5.8.5

=head1 AUTHOR

Fayland, fayland@gmail.com