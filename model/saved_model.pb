??6
?*?*
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??3
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
|
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv1d/bias/v
u
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*"
_output_shapes
:  *
dtype0
?
!Adam/embedding_layer/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *2
shared_name#!Adam/embedding_layer/embeddings/v
?
5Adam/embedding_layer/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/embedding_layer/embeddings/v* 
_output_shapes
:
?? *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
|
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv1d/bias/m
u
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*"
_output_shapes
:  *
dtype0
?
!Adam/embedding_layer/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *2
shared_name#!Adam/embedding_layer/embeddings/m
?
5Adam/embedding_layer/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/embedding_layer/embeddings/m* 
_output_shapes
:
?? *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1573*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
: *
dtype0
z
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameconv1d/kernel
s
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*"
_output_shapes
:  *
dtype0
?
embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *+
shared_nameembedding_layer/embeddings
?
.embedding_layer/embeddings/Read/ReadVariableOpReadVariableOpembedding_layer/embeddings* 
_output_shapes
:
?? *
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??	
Const_4Const*
_output_shapes

:??*
dtype0*??	
valueں	Bֺ	??BiBfeelBfeelingBlikeBimBnotBreallyBknowBtimeBlittleBgetBpeopleBwantBwouldBstillBoneBthinkBiveBevenBlifeBbitBmakeB	somethingBmuchBloveBthingsBgoingBdontBwayBcouldBdayBitBbackBgoBprettyBgoodBneedBmeBalwaysBrightBseeBalsoBfeelingsBsayBfeelsBworkBtodayBaroundBcantBmadeBthoughBwellBgotBhelpBdidntBneverBfeltBsomeoneBhappyBeveryBdaysBlessBquiteBmakesBsureBenoughBmanyBlotBfindBawayBanythingBlookBhomeBleftBkindBbetterBlastBpersonBcomeBwithoutBnowB
everythingBeverBtakeBgettingBfriendsB	sometimesBworldBnewBhttpBactuallyBstartedBthoughtBthingBtryingByearBrememberBfirstBweekBableBsaidBfamilyBtimesBbadBtryBhrefBlongBratherBletBmakingBtellBkeepBalreadyBsinceBaloneBstartBillBthemBusBreadBothersBgiveBtwoBheartBendByetBoftenByearsBmorningBnothingBwriteBstressedBplaceBpartBhateBgodBnightBmayBblogBsweetBstrangeBmightBhopeBoverwhelmedBmomentBweirdBputBschoolBidBanotherBthatBlookingBpointBamazingBguessBthinkingBsadBhardBwholeBpainBangryBstopBexcitedBanyoneBdoneBlostBeveryoneBwantedBlovedBalmostBagainBhurtB
completelyBwentBblessedBoldBnextBmyselfB
especiallyBmaybeBfriendBtalkBacceptedBselfB
passionateBbodyBhatedBwritingB	importantBhelplessBfreeByouBpostBfactBfaceBelseBcoldBpastBgreatBtiredBmustBbelieveBafraidBstupidBleastB
understandBhimBagitatedBtowardsBuseBsleepBcareBstartingBrealBleaveBsenseBbookBtoldBmeanBlatelyBinsideBshareBbestBfoundBusedBanxiousBthisBthankfulBgirlBwasntB
supportingBreasonBthatsBsorryBmindBjobBgenerousBcomingBsortBslightlyB	depressedBbecomeBwordsBstrongB	wonderfulBtakingBfarBokBnervousBliveBguiltyBprobablyBlovingBheadBclassBwishBgladBworkingBspecialBperfectBhouseBcameBshowBlonelyBtotallyBscaredBmonthsBampBsayingBreadingBmanB
frustratedBlowB	emotionalBcoolBcomfortableBproudBfineB	extremelyBsafeBparticularlyBdoBkidsBcallBfinallyB	confidentBtrulyBthoughtsBchildBstuffBpositiveB	exhaustedBhotBchangeBcannotBbigBwontBwokeBrunBlikedBeyesBashamedBadmitBtorturedBspentBbedBtogetherB	terrifiedBmissedBhearBbelovedBwalkBfunnyB
experienceBdoesntBchildrenBbotheredBhaventBfullBenjoyBembarrassedBwrongB	miserableBmadBknewBhoursBfutureBcaringBawkwardBanymoreBallBweeksBroomBdecidedBamazedBunhappyBluckyB	irritableBideaBcontentBusuallyBseemBmatterBknowingBinsteadBinspiredBhorribleBenergyBcreativeBupBsuperBstoryBlovelyBlivingBdisappointedBcontrolBbabyBtalentedB	surprisedBsomewhatBshittyBseemsBrestBcuteBconfusedBcloseBbraveBagoBwomenBwhenBuncomfortableBterribleB
successfulB	satisfiedBrunningBpopularBmoveBuselessBsomehowBpunishedBmissBlongerBeatBaskBannoyedBunsureBsittingBselfishBmotherBtalkingB	situationBfunBfoodBdiscouragedBsitBherBcalmBawfulBwomanBwearB
vulnerableBmoneyB	lethargicB	irritatedBguyBgreedyBgivingBdullBcouldntBusefulB	uncertainBneededBmomBhandB	convincedB
absolutelyBsmallBpleasantBpissedBoffendedBkindaBhappenBemptyBcuriousBcomesBstayBsoonBsideBrelaxedBmusicBinsultedBhopelessBhesB
devastatedB
determinedBaskedBwonderBviolentBtooBrushedBrudeBrichB	resentfulBonBisolatedBinsecureB	impressedBeitherBcauseBapprehensiveByoureBwhetherBvaluedBvainBuglyBtookBrejectedBpreciousBoutBopenBnumbBhopefulBhairBdumbB	differentBachingBwatchingBsympatheticBrelationshipBniceBmoreB
melancholyBjealousBgorgeousBweekendB	unwelcomeBsincereBsickBshyBshakenBpatheticBhomesickBhappenedBfuckedB	disgustedBburdenedBtoBinnocentBgloomyB	energeticBcrankyBwwwBwaysBturnBtonightBsupportBsimplyBparentsBjoyfulBhusbandBhoweverBgroggyBfaithfulBdivineBbeganB	beautifulBwatchBwakeBvaluableBthereBsmartBseeingB	respectedB	pressuredBparanoidBdissatisfiedB
definitelyBcrappyBblankBbitchyBassuredB	worthlessBrealizeBreadyB
productiveBignoredBhonestlyBhesitantB
distractedBcoupleBcertainBbitterB	yesterdayBtenderB	reluctantBpleasedBpeacefulBlongingB
humiliatedBhonoredBfrontBdrainedBdefeatedB	dangerousBcourseBbooksBbeatenBwhateverBwantingBunimportantBtrustBsuperiorBsongBshesB
optimisticBintimidatedB
incrediblyBhereBheartbrokenBhalfBgirlsBfriendlyBdirtyB
worthwhileBthrilledBromanticBneedsBmineBmellowB
inadequateBfestiveBeagerByoungBtriedBtheresBsecondBpettyBlivesBgoneBgentleBemotionsBdisheartenedBbuyBboringBweightBupsetBtroubledBthreeB
threatenedBsetB	nostalgicBnaughtyBmenBjoyBfakeBdamagedBcleverB	christmasBbrokeBlousyBlistenBwaitingBsuddenlyBspendBshakyBresolvedB	regretfulBrealizedBonesBhornyBhighB
acceptableBwelcomedBtrueB
supportiveB	sufferingBoutsideBhourBguysB	deliciousBwrongedBskinBshockedBrottenBrestlessBplanBohBgameB	disturbedBdeepBcryBcalledBwheneverBsummerBrelievedBlameBintelligentBinB	impatientBhonouredBgivenBcontinueBvirtuousB
ungratefulBsupposedBneedyBloyalBlaterBgrumpyBfearfulBexactlyBeatingB
discontentBdealBbehindBaboutBwordBtrustingBtowardBterrificBtakenBstyleBlistBhandsB
frightenedBfabulousBdoomedBdeprivedBcountryBunfortunateBproblemsB
privilegedBlistlessBisntBgratefulB	generallyBfearB	fantasticBboyBadventurousB
rebelliousBplayBnormalBmonthBleavingBlearnBholdBcarefreeBalthoughBwithinBtouchBstandBsoBsmugBsawB	reassuredBnameBmeetBisBhumanBfoolishBetcBdownBcarBartisticBwouldntBusingBtypeBsingleBmoodBminutesBinvigoratedBforwardBtellingBsupposeBsatBmovieBmetBlearningBlackBgoesBfondB
constantlyBbreakBwalkedBwaitBvitalB
triumphantBstudentsBsmileBputtingBphoneBorderBlearnedBjadedBfuckingBecstaticBdesireBchanceBbeginBbeBabusedBunlovedBmomentsBgetsBcommentsB	attentionBamBalongBworthBteamB
submissiveBstubbornBshitBmovingBlightBeasyBdreamBdelicateBdamnBcasualB	beginningByesBworriedBuponBtopB	skepticalBseenBraceBpossibleBperhapsBpeaceBopportunityBloseBhealthyBfocusB	contentedBappreciativeBwaterBstomachBpartyBmeansBgroupBfatherBfallBenviousBamountBtripBspiritBspeakBspaceB	seriouslyBlossBimagineBfranticBeasilyBearlyBdespiteBdazedBbringBageBwearingB
unpleasantBtomorrowBstronglyBmessyBlooksBfinishBdueBartBarmsBamusedBworkedBwantsBwalkingBtragicBsentimentalBpleaseBpieceBpersonalBmissingBknownBkeptBfourB
distressedBdeeplyBcrazyB
charactersBangerBaddBactBvoiceBtearsBsrcBshortBseveralBrecentlyB	questionsBnegativeBmostlyBlateBheardBexceptBdoubtfulB	communityBairBworseBstepBstateBredBquicklyBpressureBpossiblyBnewsBlineBgaveBfinishedB	delightedBworryBtruthB
suspiciousBspendingBsaysBplayfulBlevelBkeepingBissuesBhonestBhealthBfairlyBdecisionBchurchBcaseBstoriesBsonBreadersBpicturesB
personallyBlookedBkidBkeenBidioticBhitBhellB	glamorousBgeneralBexplainBeverydayBdisillusionedBdeathBdarkBcryingBbrainBallowedBwroteB	wonderingButterlyBuBthrowBsleepingB
remorsefulBpresenceB
physicallyBofB	listeningBlieBhelpingBforgetBcutBcollegeB	certainlyB
appreciateBanywayBacrossBusualBsisterBpickBmeetingBgottenBeffortBdecideB
connectionBchoiceBbusyBwifeBweatherBwarmBwannaBtrainingBsunBstressBsoundBsadnessBrespectBreasonsBreachBphotosBoffBlotsBlosingBhugeBhostileBhappensBextraBeveningBemotionallyBdadBbloggingBaskingBareaBaBtitleBtheyreBsocialBsociableBsexBprojectBpictureBpassedBnumberBmentionBmanagedBgrouchyBforBfitBfindingBexpectBenjoyedBendedBdoorBbeyondBtendBsharingBprocessBpayB	inhibitedB
indecisiveBimgBideasBhaveBhatefulB	happinessBguiltBgonnaBfullyBentertainedB	difficultBdescribeBcreateBcompleteB
complacentBclothesB	boyfriendBanxietyBallowBaheadBsongsBsimpleBresultsBpushBpregnantBpostingBphysicalBofferBlettingBlazyB	happeningBfiveBfightBdrinkBdoubtB
distraughtBdinnerBdailyBcomputerBcompanyBcommentBchooseBbroughtBblackBwhatsBthankBterriblyBslowlyBshouldntBseasonBquestionBproblemBontoBokayBnearBmemoriesBconsiderBbreathBanswerBwrittenBwithBtalkedBstrengthBstoppedBseemedBreturnBremindBpublicBpostsBpostedBpaperBolderBmediaB	knowledgeBissueBgroundBgraciousBgiftBfilmBfeetBexpressBexpectedBentirelyB
differenceBdevotedBdaughterBcrapBconversationBcompassionateBchestB	characterB	assaultedBstuckBspotBsoulB	somewhereBshoesBshamedBseriesB	sarcasticBpullBplayingBnatureBlordBjollyBinformationBholidayB	heartlessBentireBenjoyingBdieBcomfortBcolorBcleanBcharmingBbeautyBabilityBweepyBvisitBtakesBstruggleB
situationsBshakeBrelationshipsBquietBpowerBoverBinterestingBfigureBfacebookBearlierBdressBdeserveBcityBboysBbetrayedBbeforeBworksBwhyBunderstandingBunableBtvBtreatB
throughoutB
strugglingBsillyBpurposeBprayBpassBmiddleBmembersBlivelyBfuckBfavoriteBfaultBfansBfaithBelegantBdreamsBcareerBbecomingBbadlyBbBwhiteBuptightBthanksBsystemBsundayBstraightBsocietyBresultBpresentBofficeB	obnoxiousBnoticeBnonBnearlyBminuteBmeantBlolBlikelyBleavesBhelpedBgivesBfallingBexperiencedBeventBdriveBdanceB
confidenceBchangesBbirthdayBattemptB	afternoonBwinBwasBviewBveryBturningBtreatedBsmellBprojectsBprogressBpracticeBnoticedBmentallyBleadBlaughBkissBiceBhideBhearingBharderB	genuinelyBfilledBexerciseBearthBdateB	currentlyBchangedB	challengeBcallingBbouncyBblueBblamedBawesomeBunlessBtargetBstunnedBsoreBsixBsimilarBrelBreceivedB
particularBoutragedB
neglectfulBlivedBlegsBkeepsBjourneyBhurtsBhopingBgrowingBgrowBfreedomB	followingBfollowBeyeBdogBdeadBcurrentBcultureBclearBchoicesBbusinessBbitchBawareBweakBwatchedBthBtasteBstudyingBroadBrealityBprideBpathBoverallBonlineBlargeBknowsBinvolvedBimmediatelyBfridayBforeverBfolksBfingersBfearlessBexperiencesBeventsBemotionBcoverBconsiderateBcatchBbreatheBboughtBbloodBbeingBbecomesBarentBacheBwinterBwindowBweddingBuniverseBturnedBtadBstayingBserviceBsaveB	repressedBproductsB	perfectlyBnormallyBmouthBmilesBmessageBmentalBmarriedBlocalBhelpsBgracefulBgoalBfatBcoffeeBboredBareBappreciatedBacceptBweveBwallBsuccessBsubjectBstreetBstandingBsearchB	pregnancyBpoorBpartnerB	otherwiseBmoviesBmovedBmondayBmainBlipsBladyBinternetB	hopefullyBheatBhandleBfuriousBfixBfinalBfailBepisodeBeffectsBedgeBdropBdiedB
depressionBcreatedBcheckBcaughtBcatBbrotherBbrokenBblahB	basicallyBbasedBawakeBavoidBaudienceBapartBanybodyBaliveByogaByeahBvideoBvictimBtruthfulBtreeBtownBteacherBstrongerBsoftBskillsBsizeBshutBshoppingBsexualBsaturdayBsBresignedBregretBrainBprovideB	obviouslyBmemoryBmanageBlinkBletsBlegB
interestedBidiotBhistoryB
girlfriendBgamesBforgiveBfastB
eventuallyBequallyBenvironmentB	directionB	decisionsBcontactB	chocolateBbikeBbecameBateBagreeB
afterwardsBworkoutBtoughBtotalBtableBstudyBstageBsociallyBsharedB	sensitiveBsceneBreviewBreactionBranBpiecesBphotoBperiodBmusclesBmessBletterBlanguageBjesusBholidaysBhangBhahaBgainBfootBfocusedBfillBfanBfabB
excitementBexamBembraceBdistanceBdetailsBdealingBcountBconstantBclearlyBburdenBbuildingB	breakfastBblogsBbesideBbelongBbagBauthorBartistBanywhereBannoyingBalarmedBwillingBversionB
universityB	treatmentBtimidBtheBtextBtestBtellsBsufferB	strangelyBstoodBsoundsBshowsBshopBshallBseriousBrideBremainBrarelyBproperlyBproductBpositionBplacesBpageBownBotherBnobodyBneitherBmumBmeaningBlovesBlessonsBkitchenBkickBimageBholdingBhighlyBgymBformBenglishBcosB	continuedBconsideringB	concernedBcardBbusBbunchBbrushBbirthBasleepBactionBaccomplishedBwriterBworstBwindBtopicBtinyBtillBthusBthroatBthinksBthanksgivingBtermsBspecificBspeakingBsomebodyBskyBsiteBsingBrockBresponseBrelaxBrealiseBreaderBradioBprogramBpopBplanningBpeoplesBpaceBoverlyBoddBnorthBnoneBmistakeB	mentionedBmarkBhugBheldBheavyBhadntBgutBgainedBfrustrationBfightingBfailureBeaseBeBdismayedBcoreBconversationsBcommonBchosenB	childhoodBcBbrownBbarelyBbalanceBbabiesBassBappalledBallowingBactionsByouveByoungerBxBwimpyBwhoseBwhineyBwakingB
victimizedBvacationBtypingBtwitterB	thereforeBstoreBstayedBstartsBslowBshowingBshameBroutineBpulledB	potentialBpointsBplusBplayedBperspectiveBpartsBparentBnovelBneuroticBmyBmixBlayB	instantlyBimagesBhungryBheartsBheadacheBgtBgoalsBgiftsBfreshBfamiliarBescapeBeffortsBeasierBdrivingBdietB	desperateBcrossBclubBbringsB	breathingBbornBbeatBbearBattitudeBarmB	apartmentB
aggravatedBaddedB
activitiesBwarmthBwallsB	treasuredBtrainBswearB	struggledBstickBshowerBsecretBsakeBresearchBreliefBregularB	recommendBreceiveBpriceBplotBpersonalityBpassionBpassingBpairBneedingB	necessaryBnaturalBnBmoroseBmaintainB
lonelinessB	literallyB	lifestyleBlaughingBkeyBheyBheightBhardlyBgreenBgreaterB	gratitudeB
governmentBgodsBfreakingBfashionBfamiliesBendingBemoB	educationBdrawBdoingBdoctorBdidBdegreeBdatingBcycleBcupBcreatingBcreamBcomplainingBcleaningBclassesBcausedBcaresBbuyingBbuildBbotherBbookmarkBareasBangeredBandBamericanBamericaBadviceB	adventureBadmiredBactualBwritersBwineBwhilstBwastedBvoteBvisionBviewsBviciousBurgeBunworthyBtreesBtouchedBthroughBteachingBteachersBteaBtasksBtalksBsympathyBsuddenB	statementBspitefulBsolutionBshapeBsendBseaB	screamingBsafetyBrunsBroundBroleBrepeatBreleaseBqualityBprofessionalBpretendBplansBpickedBpagesBpBoverwhelmingBoutfitBnightsBneckB	motivatedBlyricsBlunchBlessonBlawBjoinBinterestBincreasinglyBillnessBignoreBhidingBhealingBgrownBgoogleBforcedBfingerBfearsBextentBexamsB
everywhereB	energizedBemailBeffectBdramaBdesperatelyBdesignBdearBcozBcouchBcompareBcloserB	christianBchoseBcheatedBchairB	celebrateBcardsBcanBcameraBbyBbottomBarrivedBapproachBanticipationBanswersBamongBalotBalbumBwhileBwaveBvaluesBunwantedBunsuccessfulBukBtuesdayBtravelBthirdBthinBteachBsurpriseBsurgeryBsuckBstudentBsplendidBsortsBsmilingBsexyBscreamBreminderBremindedB	recognizeBrealisedBrandomBprotectBpreviousBpreparedBpreferBpityBpicsBpartlyBpaintBoutgoingBopinionBmothersBmealBmatchBmasterBmarriageBmarathonBmaleBmakeupBlondonBlighterBitemsBinspirationBhorriblyBhopedBheadedBhasntBhadBgrewBgigglyBgayBgardenB
friendshipBforgotBforceBfloorBfieldBfeedBfasterBfairBexampleBexBenragedBdogsBdevelopBdepthBcuzBcriedBcornerBcookBconvinceBconnectBcolorsBclothingBclosedBchristB
challengesBbringingBboxB	blessingsBbiggerBbehaviorBasideBanimalsBaffectionateBadmireBachieveBworthyBworkersBwBvalueBunnecessaryBunkindBtoolBtongueBtermBteenagerBtBsweatBsuicideBsugarBspringBsooBsignBsightBshedBsettleBsessionBscheduleBscentBreportBrefuseBreflectBrecordBrecipeB	receivingBreachedBquoteB	presentedBprayerBpowerfulBpoetryBplentyBpinkBpaintingBoughtBopinionsBnoteB	naturallyB
motivationBmemberBmedicineBmannerBlyingBlikesBlaundryBindustryB
incredibleBhurtingBhospitalBhopesBhomeworkBhittingBhigherBhellipBhealBhangingBgrantedBglassBgiantB	forgottenBflyingBflowersBflightBfellowBexploreBexperiencingBexpectationsBenglandBdutyBdroveB
discoveredBcravingBconfessBcircumstancesBcharmedBcastBcancerBbuttonBbrightBbreakingBbrandBbetBbenefitBbellyBbegunBbeatingBbasisBbandBatBadultBaddingBactiveBachievedB	abilitiesB	abandonedBwoundBwillBwhosBwelcomeB	wednesdayBunprotectedBtroubleBtranquilBtoesBtearBsuspectBsunshineBstatusBstartledBstB	spiritualBsluttyBshiftBsettledBsettingBsentBsemesterBsecureBscaleBsandBrollBriseBridBreturnedBresponsibilityBreplyB	religiousBrelateBrecentBradiantBrBquitBpuppyBpullingBprepareBpossibilityBpoolB	politicalBplayerBplaneBperformanceBpeersBpayingBpatientBparkBpainsBpainfulBpainedBordinaryBoptionBopeningBoilBobviousBnoBnapBmixtureBmistakesBmissionBmindsBmillionBmeatBmarketB	ludicrousBliesBlearntBlaBkindsBkillBjournalBjokeBjobsBjealousyBintendedB
individualB	includingB
impossibleB
importanceBhumansBgroupsBgriefBgradeBflowBflawlessB	finishingBfacingBfabricB	expensiveBexcuseBexcitingBentryBenteredBenterBearsBdrinkingBdareBdancingB	customersBcrowdB
creativityBcopeBcookingB	consciousBcomplainBcombinationBcoatBchickenBbossBbeachBawhileBawfullyBaverageB	availableBarticleBaccidentByoudBwornBwiseBwebsiteBwasteBvibeBvariousBuniqueB
understoodBtrackBtoneBtightB
thoroughlyBtherapyBthenBtaskB	supportedBsucceedBstrangerBstarsBsorrowBsoonerBsomeonesBsmokeBsilenceBsidesBshoulderBshirtBsameB
ridiculousBresponsibilitiesB
rememberedBrelatedB	refreshedBrecallBrareBquestioningBputsBpursueB	providingBproveBproduceBpressBpreBpmB
pleasantlyBplainBphotographyBpatternBoutcomeBopenedBoceanBnofollowBmountainBmotionBmealsBmattersBmajorityBmajorBmagicBluckBloudBlistenedBlilBledBlaidBlackingBkicksBkickedBjusticeBjumpBinnerBindividualsBimproveBimpactBidentifyBholyBholeBhatBgrowthBgroundedBgrandBgoodsB	fulfilledBfreakBfranklyBforthBfootballBfontBfollowedBflowerBflatBfishB	financialBfiguredBfeverBfellBfB
expressionB	expressedBexistBexactBequalBdyingBdunnoBdrunkBdrBdiscussionsB	defectiveBcreditB	continuesBconsistentlyB
consideredBconcentrateB
compassionBcomparedBcheerBcausingBcarryBcallsBbreezeBbonesBbodiesBbloggersBbirdB
benevolentBbattleBbarBbankB
backgroundB	awarenessB	admittingBactsBactingB	acceptingBzoneByouthByoullByaBwonderedBwishingBwetBwaitedBvisitingBvaguelyBupdateBunmotivatedBunknownBunB
ultimatelyBtwiceBtoolsBtonBtensionBteethBswimB
surroundedBsurroundBsubjectsBstudioBstepsBstealBstatesBspeedBspeechBsilentBsighBshotBshootBsellBsecondsBseasonsBscaryBremoveBrememberingBreligionB	regularlyB
regardlessB	regardingBreachingBrangeBraisingBpushingBpreventBpraiseBpleasureBplanetB	petrifiedBpatientsBpaidBoppositeBoccasionallyB
obligationBnowhereBnoseBnewbornBnauseousBnastyBmovementBmomsBmommyBmodernBmodeBmixedBluckilyBliftBlevelsBlettersBladiesBkillingBjudgedBjubilantBitselfBinternationalB	interestsB	intentionB	intenselyBintenseBinitialBindeedBhumorousBhomesBhenceBhelpfulBheadingBhappilyBhandsomeBguitarBguestsBgottaBformerBflyBfireBfemaleB	expectingBenBeatenBearBdrugsBdifferentlyBdevelopmentBdeskBdeservesBdecentBdarlingBcoughB	connectedBconcernB	companiesB
collectionBcoB	classroomBcircleBchineseBcheeksBcharityBchangingBcenteredBcausesBcarriedBcapableBcakeBbuttBbrothersBbritishBbloggerBblockBbeerBbashfulBbagsB	attractedBattackBaspectsBartistsB	apologizeBalrightBairportByellBwonderfullyBwisdomBwildBwerentBviolenceBvintageButterBunlikeBuncleB	travelingBtoiletBtipBthickB
themselvesBtenBtaughtBsymptomsBswitchBsuggestBsucksBstreetsBstormBsnowBsmiledBsmallerBsleptBsilentlyB	shouldersBshockBsewingBserveB	seeminglyBseekBsecurityBsectionBscoreBsavageBrushBruleBroughBrisingBridiculouslyB
restaurantBresponsibleBrespondBremindsBrelyB
relativelyBrecipesBrealizationB	reactionsBraisedBrainyBpurchaseB	protectedBpromiseBprivateB
previouslyBprayingBpoundsBplayersBplantBpeterBperformBperBpartiesBparticipateBpantsBpanicBpackingBovercomeBoriginalBoptionsBoddlyBnicelyBnamesBnakedBmrBmostBmirrorBminorBmileBmerelyBmaterialBmassBmarksBmachineBlooseBlogBliedBlibraryBleadingBlayingBlaughedBlashesBlargerBkilledBkBjunkBjudgeBinvestBinjuryB	immenselyBignoringBhillBheavenlyBhabitBgreyBgrandmotherBgraceBgrabBfulfillBfitnessBfilmsBfeatureBfailingBfailedBextremeB
explainingB	everybodyBendsBelsesBdroppedBdrivenBdreamingBdreadBdrawingBdoesBdoctorsBdishesB
discussingBdisadvantagedBdigBdespisedBdesiresB	dependingB
definitionBdamageBcustomerBcrisisBcostB
contributeB
continuingB
conferenceB
conclusionBconcernsB
comparisonBclosetBclassicBchinaBcheckingBcheapBcatchingBcarryingBcaredBcanvasBbreastBbreadBblowBbelievedBbedroomBbastardBballBawardBauntB	attendingBattachedBarmyBappointmentB
appearanceB	amazinglyB
altogetherBaintBaffectedB	advantageBadmittedBadBaccomplishmentB
acceptanceBabuseByoutubeByorkByayByarnBworryingBwokenBwishedBwideBwastingBvileBvigorousBurBturnsB
transitionBtipsBthrewBtheyveBtemptedBtempleBswimmingBsurfaceBsurelyBsunnyB	strugglesBstringB	strangersBsqueezeBsportBspirituallyBspinBspecificallyBsortaB	sorrowfulBsolidB	slightestBsitesBsistersBsinBsignificantBshotsBshellBsheerBsexuallyB	sensationBsendingBseekingBseatBscreenBsavedBsantaBsaddenedBringBrightsBrevealBrawBrateBquickB
publishingBprintB	pressuresBpresentsBpresentationBprayersBprayedBpourBpotatoesBpoemBpickingBphraseBphaseBperverseBpenB	parentingBorderedBopportunitiesBofferingBnursingBnoticingB	nostalgiaBnineBnessBndBnailsBmoronicBmoralBmoonBmidstBmidBmereBmedsBmedicalBmastersBmagicalBmagazineBlungsBlowerBloverBloserBlockBlikingBlightlyBlengthBleadersBlbsBlandBkissingBkickingB	intensityB
impressionBidentityBhumbledBhttpsBhorseBheroesBheroBheelsBheckBhappierBhandledBhandedBgrandfatherBglassesBgiddyB
generationBgearBgasBfunctionBfruitBfriendshipsB
foundationB	fortunateBforeignBfoolBfoodsBfolkBfloatingBfinanciallyBfictionBfeelinBfeedingBfeedbackB	favouriteBfateBfamousBfalseBfacesBexpenseBexceptionallyB	excellentB	everytimeBendlessB	encourageB	encounterBemailsBdoubleBdoorsBdollarsBdizzyBdisplayB
disgustingBdisappointmentBdirectorB	dignifiedBdepthsBdenyBdavidBdadsBcrossedBcreatureBcraftBcousinBcontractionsBcontextBconsequencesBconnectionsBcompetitionB	companionBcommunicateBcoloursB
colleaguesBcodeBcoachBcloudsBclosestBclockBchillBchemoBchatBcenterBcatholicBburstBbottleB	botheringBbootsBboostBbondBboatBbitsBbiteBbillBbeneathB	believingBbeliefsBbeingsBbeggingBaspectBapplyBappleB
apparentlyBantiBangelB	americansBalternativeB	alongsideBallowsBalcoholBactedBaccidentallyBzeroBwoodBwitnessBwishesBwidthBwhoeverBwhatBwestBwereBwashedBwashBwarningBwardBvisitedBventureBveinsBunfortunatelyB
unexpectedBtwentyBtugBtripsBtreatsB	treadmillBtrailBtouchingBtightlyBtigerBticketBthrownBthrowingBtheydBtemperatureBteenBtalentBsurvivedBsurprisinglyBsuggestionsBsufferedB	substanceB	structureBstretchB	stressfulBstrategyBstoresBstingBsteveBsteppedBstaringB	standardsBstaffBspokeBspiteBsoupBsoooBsoldBskinnyB	singaporeBsimultaneouslyBsessionsBseparateBsentenceB	searchingBscienceBschemeBsavingBsatisfactionBsandwichBsaleBsadlyBrubbishBroommateBromanceBrisksBriskB	responsesB	representB
repeatedlyBregardsBregardB
reflectionBreferBrecoverB	realizingB	realisticBreactingBquestBpxBpunchB
protectionBproperBprizeBprinceBpracticallyB	powerlessBpotB
positivelyBplannedBpieBperiodsBperceiveB	pagetitleBorangeB
officiallyBofficerB	offensiveBoctoberBoccasionBobtainB	nutritionBnovemberBnotesBneutralBnervesBneighborhoodBnailBmusicalBmultipleB	movementsBmorallyBmodelBmisunderstoodBmindsetBmilkBmildBmikeBmethodBmessedBmanagerBloadsBlitBlistsBlinesBlightsBlifesBlensesBlatestBlargelyBkindnessBjewelryBjapaneseBjanuaryBislandBishBirateB
investmentB
intentionsB	inspiringBinputBinfoB	infectionBincludedBincidentBimmatureBimaginationBhundredsBhorrorBhopBholdsBhitsBhiddenBhelloB	headachesBhatingBhahBhabitsBgutsBguidanceBguessingBgrossBgroceryBgrabbedBgoodnessBgoldBglimpseBgenreB	gatheringBgarbageBfromB
frequentlyBforumB	followersBfoggyBfocusingBflowingBflashBfittingBfitsBfindsBfavorBfallenBextraordinarilyB
expressingB	explainedB	existenceBentriesB
enthusiasmB
enthralledBengageBeightBdryBdressingBdressesBdramaticB	downrightBdollBdislikeBdiscussBdiscoverB	disappearBdirectlyB
directionsB	developedBdespairB	designersBdependsBdependBdelightBdefendBdeeperBdebtBdangerBcuttingBcurlBcriticalBcringeBcourageBcookiesBcomplexB	completedB	committedB	comfortedBcolourBclueBclosureBclinicBcleanedBchrisB	cherishedBcheckedBcenturyBcashBcaptureBcapacityBcampBcaloriesB
californiaBcaffeineBcafeBburntBbrighterB
boyfriendsBblessingBblanketBblameBbirdsBbillyBbiggestBbeliefBbehaveBbathroomBbathBbaseBbahBavoidingBavoidedBauthorsBattendB
attemptingBattacksB
atmosphereBassumeBasksBaprilBappearB	apologiseB	apatheticBantsyBansweredBanimeBamorousBamongstB
aggressiveB	afterwardBafricanB	affectionBadvanceBadoreBadditionBactivityBactivelyB	accordingBabitByourselfByallBwrappedBwowBworkoutsBworeBwondersBwingsBwhiningB
whatsoeverBweeBwedBwavesBwashingBwarBviewingBviewerBviaBventBveganBvBusesBupcomingB	unsettledB	unhealthyBunfairBuneasyBuncertaintyBtuneBtuckBtruthsBtrustedB
travellingBtraumaBtraitorBtrafficBtraditionalBtouristBtortureBtodaysB	tirednessBtiedBthighsB	therapistBtheoryBthemeBtemperB
televisionB	teenagersBtaleBtackleBsurviveBsuchBstudiesBstrokeB	stressingBstopsBstickingBstashBstareBstarBstairsBspreadBspokenBsoulsBsonsBsometimeBsomedayBsofaBsnobbishBsmarterBslipBslideBskipBskillBsipBsinkingBsinkBsingingBsignsBsicknessBsiblingBshowedBshoutBshouldBshortsBsettlingBservingBserenityB	septemberBseesBsecretlyBscriptBscrewedBscottBscenesBsamBrulesBrouteBrootsBroomsBrobinBriceBrhythmBreviewsB	resourcesB
resentmentBresentBrescueBrequiredBrequireB
reputationB	remainingBrelaxingB	rejectionB	referenceBracesBquiltingBqueenBprovedBproteinBprospectBpromisedBpromB
productionBproBpriorB
pretendingB	presidentB	preparingBpredictableB	practicalBpplBpoundBpotentiallyBpornBpopsBpoliticiansBpolicyBpoliceBpitBpileB
philosophyBpermanentlyBperfumeB
performingB
perceptionBpatienceBpassesBparisBparanoiaBpapersBpangBpaleB	paintingsBpackedBoutsiderBorganizationBonceBoffersB	observingBobjectsBnumbersBnormBnonethelessBnetworkB
neglectingBnecessarilyBnamedBmuscleBmurderBmoodyBmoodsBministryBminiBmillionsBmildlyBmessagesBmassiveBmaskB	marketingBmamaBmainlyBltBloversBlinksBlimitedBlifetimeBlettuceBleaderBlayerBlaughterBlatterBlaborBkoreanBknittingBkissesBkingBjumpingBjumpedBjuliaBjuiceBjokesBjimBjackBitemBitdB	introduceB	interviewBintelligenceBinsaneBinformedBindulgeBindiaBincomeBincludeBimportantlyBimaginedBidealBhundredBhumorBhorsesBhimselfBheresBheavenBhatredBharshBhardestBhardcoreBhalfwayBhaBgunBguideBgreatestBgraspBgrandparentsBgrabbingBgBfuckinBfrustratingBfrozenBfreezingBfreakedB
forgettingBfogBfileBfiguresBfieldsBfedBfandomBfancyBextendedBexposedB
experimentBexpectationBexistingBexistedBexchangeBeverythingsB	everyonesBesteemBestablishedBessenceBerB	enjoymentBengagedBendureB	endeavorsBencouragingBencouragementB	empoweredBempathyBemBeducatedBedBeconomyBeasterBdvdBdustBdropsBdroppingBdreamedBdrawnBdrankBdistressBdisorderBdiseaseBdiscoveringB
discomfortBdisasterBdisagreeBdeservedB	describedBderbyB	demandingBdebateBdarnBdarknessBdamnedBdaddyB	curiosityBcuddleBcrushBcrimeBcreepBcrawlBcrashingBcrackBcowBcoveredB	countlessBcopyBcontinuallyBcontainB	consumingBconsumedBconservativeB	confusionB	conflictsB
conflictedB	conditionBcomplimentsBcomplicatedB	comparingBcollarBclimbedBclimbBclickBclearerBcirclesB
christiansBchoirBchildishBcheeseBcheaperBchaosBchancesB
challengedBcentreBcelebratingBcdBcategoryBcasesBcanadaBbutterfliesBburnBburgerBbudgetB	brilliantB
boundariesBbounceBboreBbonusBboardBbibleBbfBbesidesB	belongingB	behaviorsBbehalfBbeginsBbegBbareBbandsBbakingBasianBarriveBargueBapparentBanniversaryBanatomyBalexBahBagesBafterBaffordBaffectBaddressBaccomplishingB
accomplishBaccessBabsoluteByellingBxmasBxdB	wrestlingBwouldveBworshipBworriesBworldsBworkerBwipeBwingBwindowsBwhisperBwhinyBwhimBwhereasBwheelBweighingBweekendsBwebBweaknessBwatersBwatchesB	wanderingBwalletBwalksB	volunteerBvisitorBvirtualBvirginiaBviolatedBvillageBviewedBvideosBvergeBurlBupsideBupsBunusualBunitB	unfoldingBuncaringBunappreciatedBultimateBuberBtypicalBtubeBtrickBtrashBtrappedBtoysBtourBtossingBtornBtolerateBtoddBtingeBtimingBtiesBthursdayB	throbbingBthousandBtheyllBtherebyBtheaterBtenseBtendsBtendencyB	temporaryBtemporarilyB
techniquesBtaylorBtankBtagBsweatyBsurroundingsB
suppressedBsupplyBsumsBsuitsB	suggestedBsubconsciouslyBsubconsciousBstriveBstrikesBstoppingBstoleBsteppingBsteadyB
statementsBstaresBstandsBstableB	spreadingBsprayBsplitBspiritsBspiceBspellBspeaksBspanishBspanBspacesBsouthBsourceBsoundingBsooooBsocksBsnapBsmoothBsmellsBslowingBslothBslightBsleepyBsisBshopsBshootingBsheBsharpBshallowBshakingBshadowBshadesBseverelyBsetsBservicesBsequelB
separationBsensibleB
sensationsBseldomBseedBscrewBschoolsBsalesB	sacrificeBsacredBrunnersBruinBrowBroofBrevengeBrevealedBrestingBrestedBresistBrequiresBreplacedBreplaceBremotelyBremarksBremainsBreleasedB
relaxationBregionBregainB
refreshingBreduceB
reasonablyBreadingsBreactedBrantBrandomlyBrallyBragingBrageB	radiationBquickerBpushedBpursuingBpublishBpubBprovidedBpropertyBprogrammingB
profoundlyBpressingB
presentingBpreparationBpowersBpowderB	positionsBportionB
populationBpoliticsB	pointlessBpocketBplateBplasticB	pinterestBpicturedB	permalinkBperformancesBpaulBpastaB	partiallyBpanelBoverwhelminglyBoverloadBoutfitsBolBofficialBofferedBoffendB	obsessionBobligationsBobjectBnumerousBnowadaysBnotebookBnonsenseB	nightmareBnicerB	neighborsB	neglectedBneedleB	necessityBnauseaBmuseBmudBmovesBmotorBmorningsBmonsterBmiseryB	mentalityBmediumB
meditationB
medicationBmeasureBmeaninglessBmallBmacBlumpBloreBloosingBlogicBlockedBloadBljBlimitsBlimitBlendBleeBleadsBlandedBlakeBkeysBjustinBjustifyB	justifiedBjustBjulieBjoiningBjoinedBjeremyBjaneBjacksonBjacketBivBitllBiphoneBinviteB	investingBinvadedBintentBinstinctBinstanceBinsistB	insincereBinsignificantB
infuriatedB	influenceBinferiorB
inevitablyBindependentBincreaseBinclinedB	inabilityB	improvingBhyperBhuntingBhungBhubbyBhowBhotelBhostelBhopelessnessBhonorB	hollywoodBhikeB
highschoolBheavilyBheapBharryBharmBhandlingBhandfulBguestBgrinBgrievingBgreatlyBgrassB
graduatingBgoodbyeBgoddamnBglobalBglaringB
glamourousBgladlyBgenuineBgamingBgalleryB
fulfillingBfrenchBfreedomsB	forgivingBfollowerBflawsB	flashbackBfishingBfirmlyBfinancesBfifteenBfbBfarmBfantasyBfairyBextendBexplanationBexpertBexaminationBevilBeveningsBetsyBessentiallyBepisodesBepicBentitledBentertainmentB	enjoyableBenemyB	empathizeBemilyBemergingBelevatorBelatedBegoBeducateBdutiesBdunBdumpBdrugBdrinksBdressedBdreadedBdragBdraftBdoseBdocumentBdiverseBdivB
distinctlyBdisrespectedB
disrespectBdisneyBdislikedBdishB
discussionB	discoveryBdiaryB	determineBdeterminationBdetailBdessertBdesignerBdesignedB
departmentBdemonsBdemandsBdeliveryB
definatelyB	defensiveBdeclineBdecidingBdecemberBdealtBdataBdancerBdanBcyclingBcyberBcurtainsBcurseBcurledBcuddlingBcubeBcricketBcrewBcraveBcrampsBcoupledB	countriesBcostumeBcornersBcoopedBconveyBconvenienceBcontributingBcontributedBcontrastBcontemplatingBconsiderationBconsciouslyB
conscienceBconflictB
concerningBconceptBcomplimentedBcommitBcomedyBcombinedBclimbingBclarityBcitizenBcitiesB
cigarettesB	cigaretteBchokeBcheerfulBchasingBcharlieBchaptersBcelebrationBcarefulBcapturedBcampaignBbutterBbutBburnedBbridgeBboldBblowingBblondeBblindBblessBbingeBbinBbillsBbiBbenefitsBbelievesB	behaviourBbatBbaseballBballsBaweBautumnBautomaticallyB	australiaB	audiencesB
attractiveB
attractionB	attitudesBattendedBattemptsBattackedB	assistantB
assistanceBartworkBarticlesBarrivingB	argumentsBargumentBappreciationBapplyingBapplicationBappearsBappearedBapologyBanywaysB	answeringBannaBangelsB	alternateBalbeitBaidBagentBaffectsBaffairBadvancedBadultsB
adrenalineBadoringBadjustBaddsB	addictionBacknowledgeBachievementBachesBaccountBabsenceBzombieBzealandB
youngstersByoungestByoByellowByelledByearningBwronglyBwritesBwristBwrapBwoefulBwickedBwhollyB	whisperedBwhereverBwellingBwearyBwealthBweakerBweB
washingtonBwarsB	wallpaperBwakesBwaitsBwahBvomitBvoicesBvisualBvisibleBvirusBvirginBviewersBverseBuserBusaBupperBuploadBupdatesBunsafeB	unnaturalBuniBunderstandsB
underneathBunclesBtypesBtypedBtwitchyBtwistedBtunedBtummyBtsunamiBtruckB	trimesterBtriesBtributeB	treasuresBtrainedBtrailsB
traditionsBtoyBtouchesBtomatoesBtollBtoddlerBtissueBtingleBtilBthyroidBthroneBthriftBthirtyBthiefBthaiBtextureBtextedBtestsBterrorBtemperedBtemperaturesBteenageB
technologyBtechBtearyBteamsBtastesBtargetedBtapeBtapBtallBtacklingBtabletsBsystemsBsyndromeBswallowBsuspenseBsurveyB
surprisingBsundaysBsuitBsugarsBsuckingBsuckerBsuckedBsubmitB	subjectedBstylesB	stupidityBstrokesBstrikeB
stretchingBstreamBstrainBstonedBstoneBstolenBstockBstirredBstiffB
stereotypeBsteamBstealingBstationBstatedBstarvedBstarterBstaredBstackBspotsBsportsBspontaneousB	speciallyBsparkleBsparkBspareBsourBsolvedBsolveB	solutionsBsoloBsolemnBsoapBsoakBsnackBsmoothlyBslutBslightedBsleepsBslaveBskirtBskiesBsizedBsinsB
simplicityBsignificantlyBshirtsBshinyBshineBshimmerBsevenBservedB	separatedBsemiBsellingB	selectionBselectBsectionsBsecretsB	secondaryBseamsBscratchBscenarioB	scatteredBsauceBsarahBsaraBsansBsaferBsafelyBryanBrushingBrunnerBrollsBrollingBrollerBroastBringsBridingBridersBrichardBreturnsB	returningB
retrospectB
retirementB
restrictedB
respectfulBresortBresolveBrereadBrequestsBrepublicBremorseB
remarkablyBrelieveBreleasesB	relativesBrelativeB	relationsBrejuvenatedB
referencesBrecoveryB	recordingB
recognizedB
recognisedB	receptionBreactBratBrapidlyBrapedBrapeBrangBraiseBrainingBracismBracingBquoBquietlyB
questionedBquarterBquarrelBqBpursuitsBpurpleBpurelyBpumpedBpumpBpulseB	publisherB	psychoticBprotestBproneB	promotionBprogressingBprogramsBprofileB
professionB	privilegeBprivacyBpriorityBprimaryBpressedBprepB
preferablyBpoundingBpossibilitiesBportrayBpoppedBpoliteBpointingBpleasingBpleasesBplaysBplatformBplantsBplacedBpillsBpigBpicnicBpianoBphrasesB	permanentB
perfectionBpausedBpathsBpassionatelyBpartnersBpanickyBpairsBpaintedBpaddingBpackBownedBoweBoverseasBoutdoorsB	organizedB	organisedBordealBopposedBopenlyBoilyBoddsBoccupiedB	occasionsB	obligatedBobamaBnycBnurseBnumbnessBnovelsBnotionBnothingsBnotedBnickBnewestBnerveBneglectB
negativityBnativeBnationsBnationBnaiveBnaggingBmysteryBmyspaceBmutualBmushBmundaneB	multitudeBmuckBmsBmournfulB	motheringB
motherhoodBmomoBmoisturizerBmoaningB
missionaryBmiraclesB
ministriesBmindfulBminceBmilitaryB	milestoneBmightilyBmichaelBmethodsBmetalBmercyBmedicationsBmatteredBmattBmatesBmaternalB	massivelyBmassageBmashedB	marvelousBmartinBmarginalizedBmarchB
manuscriptB
mainstreamBlushBluggageBlucyBloyaltyBlosBloopBlongestBlonerBlistedBlisaBlinuxBlikeableBliftedBlickBlicenseBlemonB
legitimateBlegacyBleanBleagueBlayoutBlapseBlabourBknotBknitBknightBkneesBkneeBkitBkissedBkimBkavaBjuniorBjordanBjohnBjerseyBjeansBjanBjamesBitalianB	isolationB
irrationalBironicB
invitationBintimacyB
interviewsB
internallyBinternalBinteractionsBinteractingBintentionallyBintellectualB	intellectBinsultsBinstructionsBinsidesBinsertBinsensitiveBinsecuritiesBinjuredB	initiallyBingredientsBingBinfertilityB	indulgingB	indulgentBinducedB
indicationBindianBindependenceB
increasingB	increasedBimprovedB
impressiveBimposedBimpoliteB	impendingB
impatienceB	immediateBignorantB	ignoranceBidolB	hypocriteBhurtfulBhuntBhumilityBhumbleBhumBhostBhoppedB
hopelesslyBhooBhmmmB
historicalBhipBhintBhighestBhiBhesitateB	heavinessBheavierB	heartbeatBhazeBhavingBharmfulBhangoverBhandingBhallBhBgrowsBgrieveBgreetedBgreedB	greatnessBgrammarB	graduatedB	graduallyBgownBgoldenBgoddessBgiveawayBgirlfriendsBgiggleBgiganticBgiftedBgestureBgentlyBgeniusBgenerationsBgelBgatherBgatesBgamerBgainingBfurtherBfundsBfulfillmentBfuelBfrustrationsBfruitsBfridgeBfreelyB	fragranceBfoulBformulaBforgivenessBforestBforeheadBforcingBfootingB	flusteredBfloridaBflippingBflipBfleshBfleetingBflavorsBflavorB	flatteredBfinlandBfianceBfeministBfebruaryBfallsBfactsBfactoryBfactorBfacedBfabricsBexposingBexploredBexplodeBexplainsB	existanceBexhibitB
exhaustionB
exhaustingB
exercisingBexcusesBexamplesBeveBevaluateBeternalB	essentialBeraBepiduralBenvelopeBentranceBenormousBengineeringB
encouragedBencounteredB	emptinessB	employeesB
empatheticB	emoticonsBembarrassmentBeggsB	effectiveBeditorBedgyBeconomicBecoBearnBduringBdriverBdriedBdreamyBdreadingBdramaticallyBdorkyBdiyBdivorceBdistinctBdistantBdisregardedBdisorientedBdisconnectedB
disappointBdisappearedBdirectBdipBdintBdiningBdignityB
difficultyBdiamondB	diagnosisBdevastatingB
destroyingB	destroyedBdesperationBdescriptionB
describingB	deodorantBdeniedB	deliveredBdeliverBdegreesBdefeatBdeemBdecorationsBdeclinedBdeclareBdecentlyBdecadeBdealsBdaycareBdawnB	daughtersBdanielBcutsBcureBcupcakeBcubicleBcrushingBcruelBcrowdedBcrossingBcribBcreditsB	creationsBcreationBcravingsBcrampingBcozyB	coworkersBcoversBcoveringBcountyBcounterB
conventionB
controlledBcontributionBcontractBcontemplateBconstructiveB
conspiracyB
consistentB	conductedB
conditionsBcondescendingBconceptsBcompromisedB
complaintsBcomparativelyB
commitmentBcomfyB
comfortingBcomebackBcombineB	collectedBcokeBcockBcoasterBclosingBcliffBclientsBclayBclaimBcivilBcitizensBchunkBchoreBchicksBchickBchicagoBcherishBcheersBcheeringBcheeredBchaseBchargeBchapterBchaoticB	champagneBcellB
celebratedBcaveBcastingBcashierBcarsB	carefullyBcandyBcancelBcampusBcalmingBcalmerBcageBburiedBbummedBbumBbullshitBbuiltBbtwBbrimmingBbriefBbrewBbreaksBbratBbowlBboneBblushBblurBbluesBblownBbloodyBbloggedBblindlyBblakeB
bitternessBbittenBbitchesBbipolarB
bewilderedBbetweenBbenignBbelieverBbeenBbayBbasicBbarsBbarrierBbaptizedBballetBbalancedBbackyardBbacksBbackingBbackedBbabysBawkwardnessBawardsBaversionB	authorityBaussieB	attributeB
attachmentBassociationB	associateBassignmentsBassertBaptBappropriatelyBanticipatingB
annoyinglyB	annoyanceBanimalBanguishBangelesB	amsterdamBamountsBalienBalarmBalBakaB	agreementBagreedBagedBagainstBadvocateBadorableBadoptB
admirationBaddictedBacutelyBactorsBactorB	achievingB
accustomedBaccomplishmentsBaccommodateBacademicBabdomenBabcBabandonmentB
abandoningBabandonBzumbaBzachBzByuukiByouthfulByoursByeastByearnByashByardBxxxBxanaxBwrappingBwpBwoundedBworldlyB	workplaceBwoodsBwomensBwivesB
withdrawalBwipedBwinsBwinnersBwinesBwindyBwildlyBwiggleBwigBwifesBwierdBwidelyBwhoreBwholeheartedlyBwhippingBwhipBwhineB	whimsicalBwhackBwenB	welcomingBweirdlyBweeklyB	wearinessBweaponsB
weaknessesBwaxBwatchersBwarnBwarmingB	warehouseBwardrobeBvulnerabilityBvolunteeringBvolumeBvoidBvividlyBvisiblyBvictoryBvictimsB
vibrationsB	vibrationBvibrantBvetBvertigoBversesBventingBveggiesBvastBvanillaB
validationBurgencyBupstairsBupfrontBupdatingBupbeatB	unusuallyBunsavoryB
unresolvedBunreasonableBunrealisticB	unlovableBuninterestingBunfoldBunfitBuneaseBundertakingB
underratedBundergroundBundergoBunderBuncharacteristicallyB
unbearableBunattractiveBuglinessBuggB	typicallyBtwingesBtwinBtwelveBtweetBtutorBturkeyBtunnelBtumblrBtuitionBtrustsBtroublesBtropicalBtrivialBtrialsBtrialBtrendsBtreatingBtreasureB	traumaticB	trappingsB	translateBtransferredBtransferBtransBtrainerBtradeBtrackingBtoxinsB
tournamentBtopicsBtoothBtonsB	tomorrowsBtomBtoeBtireBtinBtidyingBticketsBtickBthruB	thrillingBthrillBthriftedBthreateningBthreadsBthirstyBthighBtheyBtheoriesBthemedBtheirsBthankedBthanBtextsBtestedB	territoryB	telephoneBteenyBteensBteddyB	techniqueBteasingB	teammatesBteamedBtantrumBtangoBtangibleBtaiwanBtailBtablesB
sympathizeBswitchedBswingsBswingBswiftB
sweetheartB
sweatshirtBsweaterBsusceptibleB	surprisesB	surfacingB	supremelyBsupremeB
supportersBsupermarketBsupermanBsunriseBsunlightBsumBsuitablyB
suggestionB
suggestingBsugaryB
suffocatedBsueB	succumbedBsuccumbB	succeededBsubtleBsuBstumpedBstumbleBstuffedBstudiedB
stubbornlyB	struttingBstruckB	strollingBstrippedBstripBstrikingB	stretchesB	strengthsBstormedBstorageBstitchBstinkingBstimulatingBsticksBstevensBstemBstellarBsteepBstatsBstatingBstarringBstanzaBstandardBstagesBsquadBspouseBspoiledBsplashBspiritualityBspinningBspineBspillingBspillBspiderBspendsBspeakerBspainBspaBsourcesB
soundtrackBsoundedBsootheBsomewayBsomeBsolelyBsoleBsolaceBsoilBsocializingBsoccerBsoberBsnugBsnobBsnifflesBsnappingBsnacksBsmoothieBsmokingBsmirkBsmilesBsmackBslumberBsluggishBslowerBslippingBslippedBsliceB	sleeplessBslamBskypeBskippingBsketchBsirenBsinusBsingularB	sincerityB	sincerelyBsimplerB	similarlyBsigningBsignedBsignalsBsidewalkB	sidelinesB	sickeningBsiBshoweredBshoutingBshootsBshookBshoeBshiverBshipBshinobiBshiningBshinesBshiftingBshieldBsheetB	shatteredBsharesBshamingBshadowsBsewBsevereBsetbacksBserifB
separatelyB	sentencesBsensoryBsensedBseniorBselectedB	secretaryBscrutinyB	scriptureB
scientistsB	scepticalBscentedBscareBscanBsarcasmBsanityB	salvationBsaltBsaladBsaintBruiningBruinedBroseBrootBrolledBrockingBrobertsBrobbedBroadsBriverBringingBrichnessBrhetoricB	rewardingBresumeB	resultingBresultedB
respondingB	respondedBresourceBresolutionsB
resolutionB	resistingBreservedBrequestBrepsB
representsB	reportingBrepliesBrepliedBreplacementB
repetitionBrepercussionsB	remindingB
remarkableBremainedBreliableBrelevantBrelationBrelatingBrejectBreillyBrefusingBrefusedBrefugeB	referringBredditBrecreateB
recoveringBrecognizingBrecognitionBreckonB	recessionB	reassuresBreadsBrayBraptureBraphaelBrainbowsBragBracistBraBquirkyBquiltsBqueerBqueasyB	qualifiedBpushyBpushoverBpureBpupilsBpullsB	publicityBpsychologistBpsychologicalBpsychoBprovidesBprovenBprotestsB
protectiveBpropB	prolongedBprofitB
professorsB	professorBproductivityB	procedureBprincessBprimerBprimeBpricesBpricedBpretentiousBpreservationBpresentationsB
prescribedB	prematureBpreciseBpouringBpotterB
possessionB	portrayedB	portrayalBpoppingBpooBpolitelyBpolishBpolarBpokeBpoemsBpmsBplightBpleadingBplanesBplaguedBpizzaBpinBpillowBpilingBpiesB
photographBphonesBphonedBphilippinesBpeteBpetBpeskyB
pertainingBpersonsBpersonaBperryBperpetuallyBpennBpenisBpencilBpeepsBpeeBpeakBpbBpavementBpauseBpatternsBpatrickBpatBpastorBpassportBpartnershipBparticipantsBparkedB	paralysedBpantiesBpangsBpalmBpakistanBpacketBpackageBoxygenBowningBownerBowlsBovershadowedBoutstandingBoutingsBouterBoutcomesBoscarBorganicBoregonBoptimismB	operationBonionsBoneselfB
oncologistBomgBolympicBoldsBoldestBoilsBoffenseBoccuredBoccupyB	obstaclesBnutsBnuggetBnudgeBnudeBnuclearBnovBnotionsBnosyB	nominatedBnoisyBnoiseBnodBnewbornsBnewbieBneverthelessBnetflixBnetBnestBnephewB
needlesslyBneedlessBnecklaceBnationalBnarrowBnarratorBnailedBnaB	musiciansBmunchBmumsBmummyBmultiBmuffinBmrsBmorbidBmontanaBmonitorB	monasteryBmomentarilyBmoduleBmobileBmisleadBmiracleBminorityBministerBminimumBminimalBmineralBminBmillsBmidtermB	microsoftBmicahBmiBmexicanBmetaphorBmerryB
mentioningBmeltingB
meditatingBmediocreB	measuringBmeasuresBmeantimeBmbaBmayhemBmaxBmathB	materialsBmatchesBmasterpieceBmassesBmarvelBmarryBmarieBmantraBmandarinB
managementBmakerBmajorlyBmailBmadnessBmachinesBluxuryB	lunchtimeBlowestBloungeBlossesBlongedBloneBloatheBloadedB
literatureBliteraryBlistensB	lipsticksBlipstickBlipBlinkedBlinedBlimitationsBlimboBlilyBlightingBliftingBliberalBlestBlessenBlemonadeBlegitimatelyBlegionsBlegendBlectureBlearnsB
leadershipBldsBlbBlazinessBlayersBlaurieBlaughsBlastedBlashBlaptopBlapB	landscapeBladderBlacedBlabelBlabBknockBknifeBkmBkingdomBkindlyBkillerB	kidnappedBkgBkeyboardBkayBkatyBjuneBjumpsBjumperBjulyBjuicesBjoysBjoshuaBjoshBjonesBjokingBjointsBjiB	jewelleryBjerkBjawBjasonBitalyBirrationallyBironBirmaBipodBipadBinvitesBinvitedB	intuitionBintroductionBintimateBinterventionBintendB	integrityB	instinctsB	instagramBinsomniaB	injusticeBinjuriesBinherentB
influencesB
influencedB
inevitableBindulgedB	increasesBincludesB	incidentsBinchesB	incapableB	inanimateBimprovementBimpressionsBimpracticalBimpactedBimmuneBimminentBimmersedBimmenseB	imaginingBillusionBieBidkBicedBhypeBhusbandsBhurryBhungerBhugsBhowsB	housewifeB	householdBhorridBhormonesBhookBhoneyBhonestyB
homosexualB
homophobicBhometownBhomeschoolingBhomemadeBhomelessBholesBhockeyBhobbyBhireB	hilariousBherselfBheroineBheightsBheheB	heartedlyB
heartbreakB	heartacheBhearsBheadsB
headphonesBhauledBhatsB	hardshipsBhardshipBhangsBhaircutBhaikuBhahahaBhackingBguttedBgushBgunsBguidingB	guaranteeBgroundsBgritsBgripBgreysBgregBgraveB
graduationBgraduateBgospelBgoshBgodlyBgnawingBglowBgloryBglancingBgiverBgirlyBgingerBgetawayBgermanBgeorgeBgenresBgenericB	generatedBgenderBgeekBgazeBgatheredBgateBgarmentsB	gardeningBgarageBgapBgaiaB	furnitureB	functionsBfrogB	frequencyBfranceBframeBfourthBfoughtBformsBforgivenBfluffyBflowyBfloralBflirtyBflirtBflippedBflickBflexibleBflewBflagBfixedB	fireplaceBfinalsBfilesBfiguringBfiercelyBfierceB	ferociousB
fellowshipBfeedsBfeebleBfeeBfederalBfeaturesBfearedBfaveBfauxBfatigueB	fashionedB
fascinatedBfamiliarityBfakingBfailsBfactorsBexpressionsBexitBexhilaratedBexhibitionsB
exhibitionBexcruciatingBexclusivelyBexcludedB	excitmentB	exceptionBexceedinglyB	evolutionBevidentBeuropeanBeuropeBeuphoriaBethicsB	eternallyBespBescapedBerikBericBequationBenvyBenthusiasticBenteringBenrichedB
enormouslyBenjoysBengineBengagingB
engagementB	energisedBenemiesB	encompassB	employersB	emphasizeBemotionlessBemergeB	embracingB	elsewhereBelectricityBelectricBelectionBelderlyBelderBeffectivelyB	educatingB
earthquakeBearningBeaglesBdwellingBdwellBdumpsBdumpedBduckBdublinBdubaiBdrowningBdrownBdrivesBdrippingBdrewBdreadfulBdrawingsBdrawerBdramasBdrainBdragonsBdragonBdraggedB
downstairsBdownloadBdoucheBdotBdoomBdonutBdonateBdocBdiveBdisturbBdistractionsBdistractionBdistractB	distancedB
disserviceB	displayedB	disordersBdisinterestedBdisdainB	discussedB
disclaimerB
disabilityB	directingBdigitalBdiggingBdifficultiesBdietingBdickBdialogBdiabetesBdiBdhBdevoteBdevilBdetoxBdestructiveBdestinyBdestinedB
despondentBdespiseB
despairingBdesiringBdesertBdescriptionsB	describesB
depressingB	dependentBdelBdejectedB
dehydratedBdefineB	defendingBdefaultBdeemedB	dedicatedBdecorateB	decidedlyBdeathsBdeadlineBdeBddBdaveBdatesBdancersBdamBdallasBdaBdBcustomBcursingBculturesBcrystalBcruzBcrushedBcrunchBcrimesBcriesBcreepyBcrazilyBcrashBcrampyBcrampBcourtesyBcourtB
courageousBcouplesBcountingBcouldveBcorpseB	corporateBcornBcopsBcopBcoolerBcookieB
convolutedB
convenientBcontributionsBcontraryBcontinuouslyB
continuousBcontestBcontainsB	consumersBconsumerBconsoleBconservativesB
connectingBconfrontationB
confessionB	conduciveB
condemningBconcertBconcentratingBconcentratedB
comprehendB	competingBcompeteBcommunitiesBcommunicationB
commercialBcomfortablyBcomboBcombatBcomBcolumnBcoloredB
collectiveBcoconutBcoachingB	clutteredBcluesBcloudyBcloudBclipBclientBclickedB	clearbothB	cleansingBclassyB
classmatesBclarifyBcircusBcircumstanceBchuffedB
chroniclesBchristmassyBchoosingBchipBchildsBchewingBcherryB	chemistryBchargedBchannelBchambersBchallengingBchairsB	certaintyBcentsBcentralB	celebrityBcelebrationsBccsBcautiousBcatsBcasuallyBcarrotsBcaptainBcapitalBcapBcamBcalvesBcalebBcabinBbyeB
businessesBburstingBbunnyBbundleBbuildsBbuddyBbubblingBbubbleBbruceBbrowsBbridesmaidsBbreastfeedingBbraceletBboxesBbowBboutBbottomsBborneBbordersBboothBbootBboobsBboobBbooBbondingBbondedBbombingBbombBboilBblogosphereBblissBblinkBbleedingBbleedBblamingBblaBbiofuelsB	betrayingBbetrayalBbenjaminB
beneficialBbenedictBbelongedBbellBbehavingB
beginningsBbeggedBbeefBbeeBbecauseBbeatsBbearableBbbqBbattlesBbatchBbarrageBbanterBbamBbaldB	balancingBbackwardBawakenBawaitingBautoB	authenticBaustraliansBatmBatleastBathleticBassureBassistBassholeB
assessmentBasB
articulateBarrivesBappropriateBapproachingBappliedBappealB
apostropheBapathyBanyonesBanticipatedBanthonyBannualBannoyB	announcedBannounceB	anguishedBangstyBangleBancientB	analyzingBamyB	ambulanceB	ambitiousBalternatingBallowfullscreenB	allergiesBallahBaliceBaliBailmentsBagonyBagonizedB	aftermathBaffirmationB
aestheticsBadviseBadvertisingBadvancesBadministrationB
adjustmentBacquaintancesBacneBaccessoriesBaccentBabyssBabusiveBabsurdBabroadBabideBaaBzoomingBzoomBzombiesBzimbabweBzestBzenByuByomisByknowByearnedByeByahooBxxBxviBwwBwushuBwuBwtfBwrittingBwrinklesBwreckingBwormsBworkingsBwoodenB
wonderlandB
wonderfullB	womanhoodBwllBwittyB
witnessingB	witnessedB	withstandB	withdrawnBwithdrawBwitBwistfulBwishfulB	wisconsinBwirelessBwiredBwireBwipBwinstonBwinceBwillyBwillsBwillingnessBwilliamsBwilledBwilderBwifiBwieldedBwidowB	wholesaleB	wholenessBwhoBwhistlesBwhiskeyB	whirlwindBwhippedBwhimsBwhiffBwherebyBwhereBwheatBwhaleBwhBweptBwelfareBweirdoBweightsBweighedBweighBweeweeBwebpageBwebkitBweavingBweaponBwayneBwatcherBwatBwarriorsBwarningsBwarnedBwarmsBwarmlyBwarmerBwarmedBwanderBwalmartB
wainwrightBwailingBwagonB	vunerableBvsBvowsBvolumesBvocalizeBvocalBvitaminsBvistaBvisitorsB	virtuallyB	violentlyBvinegarBvineB
victoriousB	vicariousBversusBverballyBvenueBventedBvendorsBveinBveilBvehicleB
vegetarianBvbacBvarietyBvariesB	vancouverBvanBvampireBvalidityBvalidateBvalidB
valentinesBvagueButteringButteredButahBusersBusageBurgingBurgesBurgentBurbanB	upsettingB	uploadingB	upliftingBunzaBunworthinessBunwindBunwillinglyB	unwillingBunwellB	untouchedBunsungB
unsettlingBunsatisfiedB
unpreparedBunpaidBunnaturallyB
unloveableBunlikelyBunjustB	universalBunityBunitedBunionBunintentionallyBunintelligentB
uninspiredBunhappinessB	unfurlingBunfulfilledBunforgettableB
unfinishedB	unfeelingB
unfairnessBunfairlyBunexpectedlyBunemploymentB
unemployedBundoneB	undesiredBundeservingBunderwhelmedBunderwayB	underpaidB
underlyingBundercurrentBunderappreciatedBunderageBunconsciousBunconditionalBuncommonBunbelievableB
unbearablyBunattainableBumB	ukrainianBuhuruBuhBuggsBtylerBtwitchBtwistBtwinsBtwatB	tutorialsBtutorialBturmoilBturkishBtumorBtuckedBtubesBtubBtsaBtrustyBtrustworthyBtruelyBtrousersBtrophyBtriumphBtriteBtrippedB	trimmingsBtrillionB
triggeringB	triggeredBtriggerBtricksBtriangleBtrendBtremendouslyB
tremendousBtraumatisedBtrapB	transportBtransparentBtransformedBtransformationsBtransformationB
transcendsB	transcendBtrannyBtramBtrailerBtragedyB	traditionBtracyBtowersBtowelBtouringBtoughestBtouchyBtotesBtossedBtossB	torturingBtorsoBtorontoB	tornadoesBtopsBtoonBtonesBtonedBtomatoB
toleratingB	toleratedBtobyBtoastBtmrBtitlesBtitledBtisBtiniestBtinglyB	timetableBtimerBtimelineB	tightnessBtidyBtideBticklesBtiaBthunderB	thrillersBthreatenB	thousandsBthoughtlessB
thoughtfulBthoseBthomasBthesisBtheseBtherapeuticBtherBthemesBtheatreB
thankfullyBthailandBthaBtextingBtestingBtesticleB	terroristBterrainBtenureBtensionsBtenderlyBtendedBtempuraBtemptingB
temptationBtemplesB	templatesBtempBtediousBtedB
technoratiBteachesBteBtaxBtauntedBtattooBtatBtasticBtastedBtappedBtallerB	talkativeBtalesBtalentsBtagsBtacosBtabbyBtabBtaBsymptomBswungBsworeBswordBswollenBswimsuitBsweptBswellB	sweetnessBsweeneyBswedishBswedenBsweatingBsweatersBswarmingBswampBswaddledB	sustainedBsuspiciouslyBsurvivorBsurroundingB	surrenderBsurgeonBsurgeBsurfB
supposedlyB	supporterBsuppliesB
supervisorBsuperficialBsummaryBsulkBsuitedBsuitcaseBsufficientlyB
sufficientB	sufferersBsuckyBsuccessfullyBsuburbanBsubtlyB
substituteB
substancesBsubsidedBsubsequentlyB
submissionBsublimeBsubaruBstuporB	stumblingBstumbleuponBstuffyBstuffsBstuffingBstubsB
structuresB	strongestBstridesBstrideBstrewnB	stretchedBstressesBstrengtheningB
strengthenBstrayBstrandsBstraightforwardBstorytellingB	storylineBstoredBstoopBstonesBstoicBstitchedBstinkyBstinksBstingingB
stimulatedB	stillnessBstickyBstewingBsterileBstepchildrenBstemsBsteakBstaysB
statisticsB
stationaryBstarveB	startlingBstartersB	starbucksBstanleyBstandbyBstanceBstagnateBstadiumB	squishingBsqueezedBsquealBsquaresBsquaredBspyingBspritzBsprintBspringerB	spotlightBspotlessBspoonBspontaneouslyBsponsorBspittingBspitB	spiralingBspilledBspidersB
speechlessBspeculationB	spectatorBspeciesBspecializedBspazzingBspaciousBsouthernBsoulmateBsoughtBsortedBsorrowsBsorbetBsoothingBsoooooBsolitaryBsoldierBsoftwareBsoftballBsodaBsodBsocietysB	socialistBsobBsoapboxBsoakedBsnuggledBsnowyBsnoringBsneezeBsnapsBsnakesBsnailBsmootherBsmittenBsmileyBsmellingBsmallestB	slytherinBslumsBslumpBsluggingBslugBslowsBsloppyBslopesBsloggingBslinkBslidingBslewBsleevesBsleekBsleddingBslateBslappedBslapBslalomBslackingBslackedBskirtsBskippedBskinsBskincareBskillzBsizesBsiwonsBsituatedBsitsBsitcomBsirBsippingBsinusesBsinksBsinisterBsingersBsinaiBsimilaritiesBsilverBsighsBsighedBshynessBshuttingBshushingBshunnedBshuffleBshruggedBshownBshowersBshowcaseBshovedBshoveBshoutedBshouldveBshortlyBshortlistedBshortcomingsBshoreBshockingBshirleyB	shiraishiBshinaeBshiftsBshiftedBshelvesBshelterBshellsBshelfBsheetsBsheepishBsheepBshaunBshariaBshannonBshamefulBshadeBshackBshB	sexualityBseventyBsesameBservesBsephoraBsepBsensitivityBsensingBsensibilitiesBsensesBsendsBsenatorBsegmentsBseedsBseattleBseatsBseatedBsearchedBseafoodBseBsdBscumBsculptB	screeningBscreamsB	scratchesBscotlandBscoresBscissorB
scientificBsciencesBsciBschsB
schoolgirlB	schoolboyB
schedulingB	schedulesB	scheduledBsceneryB
scatteringBscarsBscarfBscaresBscarBscannedBsavoryBsaviorBsavingsBsausageBsaudiBsatanBsassyBsashaBsarawakBsangBsaneBsandyB
sandwichesB	sandpiperBsandalsBsanBsamsBsampleBsaltyBsalonBsallyBsaintsBsageB
sacrificedBsackB
sabotagingB
sabbaticalBruthlessBrutBrussiaBrupeesBrunnyBrugbyBrudyBrubberBrteBrpgsBroyallyBroyalBroundsBroundedBroughlyBrougeBrotB	roommatesBromeoBrollercoasterBrolesBrodeBrodBrockyBrmbBrivalryBriteBrisesBrisenBrippedBripBrinseBrightlyB
rightfullyBrighteousnessB	righteousBridesBrichieBribsBrhythmsBrhymeBrexBrewriteBrewardedBrewardBrevvingBrevertBreveredBrevenueB
revelationBrevelBreunitedBretreatBretiringBretiredBretaliationBretainBretailBrestoredBrespondsBresortedBresonateBresistedB	resistantBresidualB	residentsBresentedBrepublicansBrepresentingBrepresentativeBreportsB	reportersBreportedB	replacingBrepayBrepairBrenownedBrenewedBremoteB	remindersBremembranceB	remembersBremedyBrelyingBreluctantlyBrelivingBrelishB	religionsBrelentlesslyB
relentlessB	releasingBrelaxesBrelatesB
rejectionsB	reinforceBreignsBregurgitateB
regulationBregisterB
regimentedBregainedBrefusalBrefrigeratorBrefreshBrefrainBrefocusB	reflectedBrefinedB	redundantBredesignBredeemB	recoveredBrecountB
recordingsBrecluseBrecklessB	reasoningB
reasonableBrearBrealmBrealizesB	realisingBreadjustBreadilyB
readershipBreachesBrdBrazorBraysBrawrBraveBrattyBrationalBratingsBratingBrashBrantsBranchBrainiBrainedBrainbowBrailwayBraidsBraggedBradianceBrackBrachelBrabbitBquotesBquiltBquieterBquestionnaireBquestionableBqueriesBquartersB
quantitiesBqualifyBpuzzlingBpuzzlesBpuzzledBpuzzleBpussyBpursuedBpurposesB	purposelyBpurposelessBpunkBpunjabiB	puncturesBpumpkinBpubsBpubliclyBptB
psychologyBpsychologicallyBpsychedBpsychB	provokingBprovocativeBprovocationBprovingB
protestingB
protectingBprotagonistB	prospectsBproposedBproofBprontoB	promptingBpromptedB	promisingBpromisesB	prominentB
progressesB
programmedB	programmeBprofoundBprofitsBprofessionalismBproductionsB	producingBproducedBproclaimingB
processingB	processesBproceedBprizesB	prisonersBprisonerBprintsBprintingBprinterB
principlesBpriestBpridedBprickB	pricelessBpreyBprettierB
presumablyBprestigiousB	preschoolBpreposterousBpreparesB
prejudicedBpreformB	preferredB
preferenceBprefaceBpredominantlyBpredictablyB	preciselyB	precipiceB	preachingBprankBpraisesB	pragmaticBpractiseB
practicingBpowerlessnessBpovertyBpotsBpostoBpostgraduateBpossessionsBpossessB
positivityBportlandBportBporesBpoppyBpoorlyBpoopedBpoolsBponderBpompousBpollB
politicianBpolesBpokingBpokemonBpoisonedBpoeticBpoetBpodcastBplusoneBplungingBplungeBpluggedBplugB	pleasuresBpleaBplateauBplantingBplantedBplannerBpitifulBpissesBpipBpinpointBpingingB	pineappleBpinchingBpinchBpimpBpilotBpillarBpillBpilesBpickyBpicksBpicklesBpicBpianosBphotographingBphotographersBphotographerBphilipsBphiladelphiaBpetronasBpessimisticBperspectivesB	personnelBpersonalitiesB
perseveredB
persecutedB	performerB	performedBpercieveB
perceptiveB
percentageB	perceivedB
peppermintBpentBpennyBpencilsBpenceBpelvisBpeekingB
pedestrianBpeckishBpeasBpearlyBpearlsBpeBpaydayBpavilionBpattiesBpattedB
patriotismB	patrioticBpatchBpasteB	passersbyB	passengerBpartyingBpartingBparticularyBparticipatingB	partakingBparodyBparkingBparcelB	paralysisBparallelB	paragraphBparadiseBparadeBparBpanickedBpamperedBpalmsBpaletteBpalBpairedBpaintsBpainlessB	packagingBpacedBpacBozBoxfordBownersBowlB
overworkedB
overweightBovertakeBoverflowBovereatB
overcomingBouttaBoutrightBoutrageouslyBoutletBoutingBoutdoorB	outcastedBoutcastB	outburstsBoutbreakB	ourselvesBourBounceBorphanBoriginsB	originalsB
originallyBorientedBorgasmB
organizersB
organisingBorganisationB	orchestraBoptedB
oppositionBopensBopenerBopBoopsBonsetBonsBongoingBonelBoluBoliviaBoliverBoleBohioB
oftentimesB	offspringBoffsetBofflineBoffingBoffendsB	offendingBoccursBoccurredBoccuringBoccurBoccupationalB
occasionalBobserverBobservationBobeyBobeseBobedientBoatmealBoBnyquilBnutshellB	nurturingBnurturedBnurtureBnurseryBnoviceB	nourishedBnormalcyBnooneBnoonBnoodleBnonstopBnomineesBnoisesBnoeBnoddedBnoahBnippingBnightmarishB
nightmaresBnightlyBnicotineBniBngBnflBnewtownB
newspapersB	newspaperB
neuropathyBnetherlandsBnervousnessBnerdyBnerdB
neighboursB	neighbourBneedlesBneatlyBnearnessBneBnayB	nauseatedBnaughtBnativesBnationalityBnathanBnasalB	narrativeBnarratedB
narcissismBnapsBnaoBnanoBnaggedBmyriadBmuslimBmusingsBmusicianBmunchingBmumbaiBmuddyBmudderBmuasBmsgBmphBmouthsBmouseBmournBmountingB	mountainsBmountBmotorsBmotivesB	motivatorBmotivationalBmosquitoBmorphBmormonBmoresoBmoralsBmonthlyB
monogamousBmondaysBmonaBmommaBmojoBmoisturisingB
moderatelyBmockBmmBmlBmixingBmisunderstandingBmistyBmissyB	misplacedBmisbehaviorB	minusculeBmindedBmillBmidwestBmichelleBmiaB	metaphorsBmetallicBmeshBmeritBmenuBmentionsBmenswearB	menstrualB	menopauseB	memorizedBmemoirBmeltBmelodyBmelodiesB	melbourneBmelancholicBmegaBmeetingsB	meditatedB	medicallyBmedalBmedBmeasurementsBmeannessBmaxsBmatureBmathematicsB	masculineBmasalaBmaryB
marvellousBmarthaBmarryingB	marriagesBmarketsBmarketplaceBmariusBmariaBmarginalisedBmarginBmapsBmanualBmankindBmanipulatedBmanilaBmanifestingB
manchesterBmammothBmammaBmamasBmalaysiaBmakinBmailmanBmaidBmagsBmagnificentBmaggieBmabelBlyricB	luxuriousBlurkingBluredBlungeBlullBlukeBluhBlucasBltrBlouisBloudlyBlordsBloopyBloonB	longevityBlokiBlogoBlogicalBloggingBloganBlocksBlockingBlockerBlocateBloathingBloansBlloydBlistingB	listenersBlistenerBliquorBlionBlingersB	lingeringBlimbsBlimbB
likelihoodB	lightningB	lightnessB
lighteningBlightenBlightedBliftsB
lifestylesBlifelineBlibertyB	liberatedBliarBliBlhBleviBlengthyBlegendsBlegalBledangBlecturesBleatherBleapBleanneBleaningBleakedBleafBlaxmanBlawsBlaurenBlaunchBlatherBlapsBlappingBlaneBladenBladBlacksB
lacklustreBlabelsBlBkuyaBkoreaBknowledgeableBknocksBknockingBkinBkilterBkillsBkiddosBkiddingBkentuckyBkennyBkenBkeenlyBkatnissBkarenBkarateBkaraokeBkaiB
justifyingBjustificationBjungleBjulietBjuicyBjugBjudgmentBjudgingBjudgesB	judgementBjoyousBjournalsB
journalistB
journalismB
journalingBjonahBjonBjoBjewsBjewBjerryBjensBjennyBjellyBjeffBjeanBjazzBjayBjawsB
javascriptBjarBjapanBjamieBjakeBjailBjacobsBjackedBjBivoryBistanbulBisraelB	isolatingBislamBisaacBirritateB
irrelevantBirisBiraqBipB	involvingBinvolvesBinvitingB
invincibleBinvestigateBinvestedB
invariablyBinvadeBintruderB
introvertsBintrovertedB
introducedB	intriguedBintimidatingBinterruptedBinterpretationBintercourseBinteractBintentionalBintellectuallyB
integratedBintegralBintakeB	insultingBinsultB
instructorBinstructionBinstitutionBinstinctivelyB	instilledBinstallmentBinspiresBinspireB
inspectionB	inspectedBinsightsBinsightB	insidiousB
insecurityBinsanityBinnateBinkBingrateBinfrastructureBinformalBinfluxBinfluencingB	indonesiaBindividuallyBindividualityBindigoB	indicatedB	incorrectBincorporatedBincorporateBinconvenienceB
incompleteBincompetentB	inclusiveBinchBincenseBincaseBinarticulateBinadequaciesB	impulsiveBimpulseBimprovementsB	imprintedBimpressBimpotentBimpostorBimpliesB	implementB	imperfectB	immigrantBillustratorsBiframeBifBidiotsBidentifyingBidealsB
idealisticBicyBiconsBiconBickyBibsBianBiamBhypedBhusseinBhurriedB	hurricaneBhuntersBhumpingBhummusBhumblingBhumanityBhuggingBhuckleberryBhsBhrsB
houseboundBhottestBhormoneB
horizontalBhopsBhoodBhomosexualityB
homeownersB	homemakerBhomelyBhollyBhollowBhobbleBhobbiesBhoaxB	historiesBhisBhipsBhintsBhillsB
highlightsB	highlightBhiccupsB
hesitationBhelplessnessB
helplesslyBhellaBheartedB	heartburnBheartbreakingB	healthierB
healthcareBhealsBheBhazyBhawkBhauntBhaulBhatesBhasBharrassmentBharmsBharmonyB
harmoniousBharmedBhardenBharborB
happeningsBhandmadeBhandheldBhandedlyBhandbagBhamsterBhammeredB	hamburgerB	halloweenBhaircuteBhailBgurusBgunongBguiltedBguildB
guidelinesBguessedBguardianBguardB
guaranteedBgrumbleBgroveBgrippingBgrippedBgrillBgreetBgreekBgravityBgratuitouslyBgratefulnessB	grapplingBgraphicsBgrandpaBgrandmothersBgrandmaBgradesBgradersBgovernorBgovernmentsBgothB
gorgeouslyBgoingsBgoatBgnaBgmBglycerinBglutenBglowingBglossyBglobeBglitterBgleeBglasgowBglancesBgigBghostBgettinBgeorgiaB
generosityBgearedBgazingBgaryBgardensBgapingBgalBgagBfuzzyBfuturesBfutileBfussBfunkyBfuneralBfundBfunctioningBfullnessBfrugalBfrostingBfrigginBfridaysB	freshnessBfreshmanBfreshlyBfrequentBfreezerB
freakishlyBfraudBfranticallyBframesBframeborderBfragileBfoundationsBforwardsBfortuneBfortunatelyB	fortitudeBforsakenBformingBformedBformalBforksBforeseeBforcesBfoolsBfooledBfondlingBfollowsBfoldedBfobBflungBfluidsBfluidBfluBflopBfloorsBfloodsBfloodingBfloatsBfloatedBfliesBflickingBfleeceBflawedB	flattenedBflashingBflashesBflashedBflareBflameBflacBfixingBfistBfirmBfiredB
fingernailBfillsBfillingBfigurativelyBfigsBfieldingB	fictionalBficBfiberBfewBfetchedB	festivalsBfengBfemalesBfeelyBfeaturedBfeatBfeastBfaultsBfathersBfashionableBfartherBfaredBfareBfandomsBfanciedBfameBfalterBfalselyBfailuresBfadeB
facilitiesBfacialBfaBeyelinerBeyelidsBeyebrowsB	extensionBexposureBexposeB
explosionsB	exploringBexplorerBexplorationBexplodedBexpertsBexperimentsBexperimentingBexperimentedBexpectsB	expansiveBexpandsBexoticBexitedB	exercisesB	exercisedB	executingBexecutedB	excitedlyB	excessiveBexcessesBexcessB
exceptionsBexceptionalBexcelBexamineBexaggeratingBevolveBevokedB	evidencedBevidenceBeventualBethiopiaBeternityBetapeBestrogenBermB
equivalentBepBenvironmentallyBenvironmentalB	envelopedBenthusiastsB
entertainsBentertainingBentertainersB	entertainBensureBensueB	enrichingBenlistBenhanceB
energizingBenergiesBenduredB	enduranceBendingsBencasedB	enamouredBenactBemptiedB
empoweringB	empathiseBemmaBeminentBembracedBembarrassingB	embarrassB
embarrasedBembarkB
embarassedB	emanatingBelusiveBellieBeliteBelevatedBelementsB
elementaryBelementB
electricalB	electionsBelationBeidBehBegyptianBeggBegalitarianBeffingBeffinB	effectingBeducationalBedochieBeditBectBechoBebonyBebayBeastBeasiestBearringsBearnedBearliestBeachBdynamicBdutchBdustedBdurationBdumpingBdummiesBdukesBdukeBduesBdudesBductsBdualityBdsBdryersBdrownedBdroopBdriversBdrinkinBdriftB	dribblingBdrawsBdrasticallyBdrasticBdrakeBdraggingBdowntownBdownsBdoubtsBdoubtingBdoublyBdorothyBdormBdopeBdoodleBdonnaBdongBdonatedB	dominicanBdominantBdomainBdollsB
documentedBdocsBdmBdivulgeBdivisionB	diversityBditchedB
disturbingBdistrictBdistributorsBdistributionBdistractingBdistinctionB
dissolvingBdissolveBdisruptBdisregardingB	disregardBdisorientatedBdismissBdisgruntledBdiscountB
disciplineB	disciplesBdisbelievingB	disastersBdisappearanceBdisagreementBdisabledBdisabilitiesBdirtBdineBdiminishBdiffersBdifferencesBdiapersBdialogueBdewBdevourBdevoteesBdevoteeBdevoidBdevilsBdevicesB
developingBdetestedBdestroyBdestinysBdesiredB	desirableB	designingBdesertedBderangedB
deploymentBdepletedB	departureBdenyingBdentistBdentalBdentB	denouncedBdennisBdeniseBdenialBdemotivatedBdemonstrateB	democratsB
democraticBdemandB
delightfulBdeletedB
definitiveBdefiniteB	definetlyBdefianceBdefBdeerBdeepikaBdeepestB	deepeningBdeedsBdeeB
decorativeB	declaringBdeckBdeceivedBdecadesBdearlyBdeanBdeafBdaylightBdaydreamBdavidsBdauntingBdashBdarkestBdangerouslyBdammitBdamagingBcynicismBcynicalBcyclesB	customaryBcustodesBcusB
curriculumB	curiouslyBcurbBcumBculturalBculpritBcssBcrutchesBcrunchedB	crumblingBcrumbleBcruiseBcrudBcrowsBcrotchB
crossroadsBcrossfitB
croissantsBcrochetB
criticizedBcriminalBcremeBcreedBcreatorsB
creativelyB
creaminessB	crazinessBcrayBcrawlingBcravesBcrashedBcraftingBcracksBcoworkerBcourtneyB
courthouseBcountsBcountedB	counselorBcounsellingB
counselingBcounselBcoughingBcostsBcostlyB	correctlyBcorrectBcorpsB	corneliusB	cornbreadBcorinthiansBcopingBcopiesBcooperationB
conversionBconverseBconventionalBconvenientlyBcontrollingB
contractedBcontestsBcontentmentBcontaminatedB	containerB	containedB
contagiousBconsumptionBconsumerismBconsumeBconsultationBconstructivismBconstructionBconstrainedBconstitutionBconstipatedBconsolationB
consistingB	considersBconsiderableBconsequenceBconsecutiveBconsciousnessBcongressBcongratulationsB
congestionB	congestedB	confusingBconfuseB
confrontedB	confirmedBconfirmBconfinedB	conductorBconditioningBconditionedB	condemnedB
concoctionB	concludedBconcealB	computersB
compulsionB
compromiseBcompostBcompositionBcomposedB
complimentB
completionB
completingB	complainyB	complaintBcompetitiveB
compensateB	compelledBcompB	communionBcommunicatedBcommunalBcommoditiesBcommercialsB	commentedBcommemorateBcommandsBcommandBcomingsBcomicB	colourfulBcolouredBcolonsB
collectingBcollaborationBcoldnessBcolbyB	cognitiveBcoffinBcoercedBcockyBcoatsBclutchBclungBclumsyBclubsBclothBclosesBcloselyBcliqueBclinicalBclingyBclingingBclimateBclickingBclicheBclerkBclenchesBclearingBcleanseBclaustrophobicBclaudiaB	classworkB	classicalBclaretBclappingBclaimsBcinemaBciaB	churchillBchurchesBchronicallyB	christineBchristianityBchorusBchoosesB
chocolatesBchilliB	childrensBchiB	chemicalsBcheatingBchattingBchatterBchatsBchasedBcharmB	charitiesBchargingBchantBchanelBchamberBchainedBchainBchaiB	certifiedBcerealBceoB	centuriesBcelebratoryBceilingBceasesBcdnBcdmB
cautiouslyBcaterpillarBcastleB	cassandraBcartoonsBcartoonBcarterBcaroleBcaressB
caregiversBcareersBcardioB	cardboardBcaraB	capturingBcapturesB
captivatedB
capacitiesBcantorBcandlesBcandleBcanalBcanadianBcalmlyBcalmedBcalendarB
calculatedBcairnsBcabinetsBcabBbuysBbuttonsB	butterflyBbustingBbushesBbusesBburyBburnsBburningBburnerB	burdeningBbunniesBbumpsBbumpBbullyBbullsBbulletBbulkBbugsBbuggingBbugBbuddhismBbudBbucksBbscBbsBbryanB	brutalityBbruiseBbrowsingBbrownsBbrotherhoodBbritainBbrinkBbrewingBbrethrenBbreedsBbreedBbreathsBbreastsB
breastfeedBbreakupBbrazilBbrandsBbrakesBbradBbrBboxingBboutsBboutiqueB	boundlessBboundBbouncingBbothersBbothBbostonBborrowBboredomBborderBbookedBbonusesBbombingsBbomberBbombedBboldlyB
boisterousBbohemianBboggedBbodBbobBboardsBblowsBblondBblocksBblockingBblockedBbloatedB
blissfullyBblindingBblindedBblasterBblasBblanketsBbladeBbladderB	blackpoolB	blackburnBbizarreBbitterlyBbishopB	birthdaysBbiologyBbioBbindingBbiggieBbettyBberryBbentBbengalsBbenBbelowBbelongsB
belongingsBbellmontB	belittledB	believersBbeirutBbeijingBbehavedBbefriendingBbeefyBbedroomsBbecuzBbecasueBbeautifullyBbeastBbearsBbearingBbeamBbeachyBbcBbattlingBbatteryBbatmanB	bathroomsBbathingBbasksBbasicsBbashingBbashBbarneyBbarnBbarbieBbanksBbankingBbankersBbaniBbangBbananaB	baltimoreBballroomBballoonB	ballisticBbakerBbakeBbaggyBbaggageBbagelBbaffledBbadassB	backwardsBbackpackingBbabysitBbabaBawokenBawedBauthoritiesBauthoritativeBaustinBaustenBauBattractBattireB	attemptedBattainBatomBatlantaBatheistBatheismBastonishmentB	assuredlyBassumptionsB
assumptionBassumingBassumedBassociationsB
associatedBassetBaspireBasiansBashameBasaBaryikuBartsBartistryBartisansBarticulatedBarrivalBarrangedBarousedBarouseBarmorBariseBarguedBarethaBarenaBarchesBarcadeBarabsBapronBappsBapprovalBappointmentsBapplicationsBappetiteB	appearingBappearancesB	appealingB
apothecaryBapologizingB
apologizesB	apologiesB	anythingsBanyB	anxiouslyB
antisocialBanticsBanothersBannouncementBannieBanneBankleBangstBangieBandreaBandoverB	ancestralBanalyzedBanalysisBanalogyB	amvassagoBamusingB	amplifiedBamishBamericasBambitionBaltBalmondB	allocatedBallergyBalittleB	alignmentBalignBalgebraBalertB	alcoholicBalbumsBalbinoBalaskaBakuBakinB	aimlesslyBaimingBaimBahemBahahaBagenciesBageingB
afternoonsBaforementionedBafieldBaffordsBaffirmedB	affiliateB	affectingBadverseB
adventuresB	adulthoodBadoptionBadoptingBadoptedBadomenB
admittedlyB	admissionBadmiringB
adjectivesB
adequatelyB
addressingB
additionalBaddictBadaptB	actualityBactivistBacquiredB
acquaintedBacknowledgedBachyBachievementsBachedBaccusesB
accuratelyBaccurateB	accountedB	accompanyBaccompaniedB	accessoryB	academicsBacademiaBabstractBabouBzzBzumBzucchiniBzqBzoomsBzooB
zonisamideBzonedBzollBzofranBzjsBziplocksBziplineBzineB	zimmermanBzimbabweansBzicoBzicamBzhuoBzhuBzenosBzendikarBzendenBzemBzayneBzayBzaraBzapperBzapBzaneBzambiaB
zackmdavisBzackByuruseiByupByunhosByummyyByummyByuckBytearByourweightlossmethodsByourByoshidasB	yorkshireByorksByoriByokedByogurtByoghurtBykByixuanByippeeByinByilingByikesByhhhayByesubaisB
yesterdaysByersByelpingByelpByearsesByearnsB	yearningsByearlyByearbookByeaByawwwnByawningByatsuraByarnsByardageByankedByankByangBxviithBxsBxoxBxmlBxlBxiaoBxiaBxersBxelliealicexBxelaBxddBxblaBxangoBwyattBwwiiB	wutheringBwussBwthBwtBwsBwrylyBwrungBwrongsB
wrongfullyBwrittersBwritingsBwritinB
wristwatchBwrinkleBwretchedBwretchB	wrestlersBwrestleB	wrenchingBwreckBwreakingBwowedBwovenBwoundsBwoundingBwotcsBwotBworthlessnessB
worshipingBworsenBworrysBworkshopB	workmatesBworkloadB
workaholicBwordlessBwoopBwooooBwooingBwoodyBwoodstonB	woodstockBwoodmanB	woodlandsBwoodlandBwonkaBwondrousBwombBwolfiewolfgangBwoesBwoefullyBwodBwobblyBwoahBwoBwnatB	wizardingBwizardBwizBwittedBwitnesedBwitlessBwitherBwithdrawingBwitchesBwitchBwispyBwisingBwiserBwiselyBwintryB	wintersonBwintersBwinterpaysforsummerBwinningBwinnerBwinkedBwinkBwineyBwinetastingB	winehouseBwindmillBwindedBwincedBwimpB	wimbledonBwiltB	willpowerBwillisB	willinglyBwilliamB	willfullyBwildstarBwildlifeBwilcfryBwikiBwihtoutB	wiheomhaeBwiggyBwieghtBwidgetBwickingBwickdlyBwiBwhooshBwhoopingBwhoopedBwhoopBwhooooosBwhooooooooosBwhoooooBwhodBwhizzesBwhizBwhitneyBwhitleysBwhitleyBwhitesBwhistleBwhisperingsBwhiskersBwhirBwhingingB	whingeingBwhinesBwhinedBwhimsyBwhimperBwherewithalBwhereinB	whereforeBwhelmingBwheelsBwheeeeeeBwhatnotB	whateversBwhammoBwhalesB	whalenteeBwettestBwetsBwestwoodB	westernerBwesternBwesterBwesleyanBwernerBwendyBwelliesBweismansBweirdestB	weinsteinBweinB
weightlossBweightlesslyB
weightlessB	weightingBweighinsBweepBweenyBweekdayBweedingBweededBweddingsBwebsitesBwebmatesBweaverBweavedBweaveB
weathermanBweaselBwearsBwearilyBweariedBwearersBweaningBwealthyBweakestBwdBwcBwaxingBwaxedBwavingBwavedB	watersideB
watermelonB	watchableBwashroomBwaryBwartsBwarsawBwarrickBwarpBwarnsBwarnerBwarmestBwarhoundB
warfighterBwarfareBwardrodeBwapBwantigBwantdBwaningB
wangxuehaiBwandersB
wanderlustBwanderedB	wanatribeBwalterBwaltBwalrusBwallyB	wallowingBwallowBwalletsBwalkmanBwalkerBwaliaBwalesBwaleedsBwaldoBwaldmansBwalBwakeupBwaitroseB	waistlineBwaistBwageBwaftsBwaftBwafflesBwadingBwaddleBwackyBwaaayBwaaaantB
waaaaayyyyBwaB	vulturousBvulnerabilitiesBvulgarBvuittonBvtBvoyeurBvowedBvowBvotingBvotersBvotedBvortexBvonBvomityBvomitingBvomitedBvolvoB
volunteersBvolunteeredB	voluntaryB	voldemortBvolBvoipBvoicingBvoicesfromkryptonBvogueBvocrefB	vocalistsBvocabBvmBvlogBvjBvivreBvivienneBvivekBvistingBvisitsBvisionsBvisableBvirusesBviralBvipBviolinB
violationsBvinnieBviniagretteBvinemanBvinegaryB
vindictiveBvillianBvillainBvillagesB
vigorouslyBvigilantB	viewpointBviewingsB
vietnameseBvietnamBviennaB	videotapeB
videogamesB	victorianBvictoriaBvicesBvicenteBviceBvibratorBvibratesBvibrateBvibesBveyBvexedBvetsB
veterinaryBvestBvesselBvesaBveryyBversaBverrrrrrrryyyyBveronaBvermontBverizonBvergingBverdictsBverdictB	verbalizeBverbalBveraBvenusB	venturingBventuredB	ventruredBvenomBvenisonB	vengeanceBvenerateB	venerableBvendorBvenBvelvetBvelocityBvellasBveldeB
vehementlyBvegitarianismBveggieB
vegetablesB	vegetableBvegasBveeryBveeringBveerBvaultBvaughnBvastlyBvasterBvaseBvarvelB	varsitiesBvarnishB
variationsB	variationBvariantsBvarBvaporBvanuatuBvantageB
vanquishedBvanityBvanishesBvampiresB	valorizedBvalerieB	valentinoB	valentineBvalenteBvaleBvalbuenaBvaginalBvaginaBvaccineB	vacationsB
vacationerBvacancyBvaBuwilnevrknowBuwBuvBuuuughButopianButopiaButmostButilizeButilityButfButeButBusmleasyBusheringBusdBusariousBusainBurukBurineBurinateBurgingsBurghBurgentlyBureBurbaniteBupswingBupstreamBupsetsBuprightBuppityBuploadsBuploadedBuplifterBupliftedBupliftBupholsteredBupheavalBupgradeB
upbringingBunwittinglyBunwiselyBunwashedBunwarrantedBunusedBuntrustworthyBuntriedsBuntilB
untidinessB
untalentedBunsuspectingBunsurprisinglyBunsurprisingBunsupportedBunsupervisedB
unsuitableBunsteadyBunstableBunspokenwordsBunspoiltBunspecifiedBunspeakableBunsophisticatedBunsolvedB	unsimilarB	unsheatheBunseenBunseatB	unsavouryBunsatisfyingBunrulyBunrewardingBunrestBunresponsiveB
unreliableB	unrelatedBunreasonablyB	unrealityBunrealisticallyBunrealBunreadBunravelsBunprofessionalBunproductiveB	unpressedBunpredictabilityB	unpopularBunpleasantnessBunpleasantlyB	unplannedBunpavedB	unnoticedBunnoticeableBunmovedBunmitigatedBunmentionedBunluckyBunlovingBunlockBunlikedB
unlikeableB	unleashedBunknownsB
unkindnessBunjustifiedBuniversallyBuniversalizedBuniversalityB
uniquenessBunionsBuninterestedB
unintendedBunintelligibleBuninstallingBuninspiringBuninhabitedB
uninformedBunimaginableBunilaterallyBuniformBunibrowBunheardBunhealedBungraciouslyBungodlyB
unfriendlyB	unfoundedB	unfollowsBunfoldsB	unfocusedBunfathomablyBunfashionableB
unfaithfulBunexplainedB
uneventfulBunevenBunenthusiasticBunencumberednessBunemotionalB
uneffectedBuneditedB
uneasinessB	unearthlyB	undutifulBundulyBundueB
undressingBundoubtedlyBundoBundiscoveredBundevelopedBundeservinglyBundeservedlyB
underwearsB	underwearB
underwaterB	undertoneB
undertakenBunderstandablyBunderstandableB	understadB
underpantsB
underlinedBundergraduateBunderestimatedB
underbellyB
undeniablyBundefinableBundecoratingBunconvincedBuncontrollablyBuncontrollableBunconsciousnessBunconsciouslyBunconformableBunconditionallyB	unconcernB
uncomposedBuncommittedBuncomfterbleB	uncoilingBunclearB	unchartedBuncertaintiesBuncaredBuncannyBunbreakableBunboundBunbelievablyBunawareBunavoidablyBunavoidableBunappreciativeB
unamericanBunafraidBunacceptablyBunacceptableB	umpteenthBumlunguBumbrellaBulyssesBultrasoundsB
ultralightBultaBuljiBulcerBulbujitneunBuhmBugliestBuglierBughBugandaBufcBubuntuBuaeBtyresBtyreBtyrantBtyphoonBtylenolBtygermanBtychelleBtyBtxlBtxBtwoyearBtwosongsBtwitchesBtwistsBtwiggyBtwentysomethingBtweetyBtweetingBtweenBtweedyBtwdBtwasBtuxedosBtuteeBturtleB	turnoversBturnoutBturnipsBturdBturbulentlyB
turbillionBtunjiBtunesBtumblingBtulipsBtulipBtuitionsBtugsBtuggingBtudeBtucsonBtubsBtubingB	tubelightBtuBttcBttawinB	ttaekkajiBttBtshirtBtrystBtryinBtryedB
truthfullyB
trumpetersB	trumpeterBtrumpBtruleyBtruffleBtrudgingBtrudgersBtrucBtroutBtrottedBtrophiesBtropeBtroopsBtrompingBtrolleyBtriumphsBtrippingBtripleBtrinketsBtrinityBtrimmedBtrigonometryBtrickyBtrickleBtrickeryBtribulationBtribeBtribalB	triallingBtrepidatiousBtrepidationBtrendyBtrendierBtremusBtremorsBtremblyB	trebuchetBtrebleB
treatmentsBtreasuryB
treassuredBtreadingBtreaderB	treacheryBtreacherousBtravisBtravestyB
travelogueB	travelledBtravelerBtravBtransportedBtransportationB
transpiredBtransparenceBtranslucentBtranslatethisB
translatedB
transitoryB	transientBtransgenderB
transformsBtransformersB	transformB
transcribeBtranscendentBtranscendantBtranquilityBtramplesB
trajectoryBtraitBtraipseBtrainsB	trainableBtraffordBtraffickingBtraditionalistsBtradersBtradedBtradBtractionBtracksBtrackchangesBtracifishbowlBtraceBtptBtowerBtowedBtowBtoutedBtouristyBtouristsBtourismBtouretteBtoureBtoungesBtoughtBtougherBtoughenBtouBtotsBtoteringBtoteBtotalityBtotaledB
toshibalolBtorwardBtornedBtornadoBtormentBtorchBtorBtoppingBtopperBtootsiesBtonksBtoniteBtonightsBtoniBtongueyBtonerBtomoeBtommyB	tommorrowB
tomfooleryBtomesB	tolerableBtogehterBtofurkeyBtoenailsBtoenailBtodyBtodoBtoddlersBtoddlerhoodBtodayyyBtodBtnaBtltgBtlBtizzyBtithBtitaniumBtitanicBtiringBtiradesBtippingBtiphanyBtintBtinselBtingsBtinglingBtinglesBtimmyBtimesaBtimelyBtimelessBtimBtiltBtightsBtighterB	tightenedBtiggersBtiggerBtiffanysBtiersBtidbitBticsBticklingBtickledBtickleBtickingBtibrisBtianjinBtiBthyBthwartedBthunkBthundershowersBthumpsBthumbsB	thumbnailBthumbBthugsBthugBthsBthrowsBthrongsBthroesBthroatsBthriveBthrillsBthriftyBthreesBthreatsBthreatBthreadBthouBthosBthoroughBthompsonBthoBthnBthkBthislifeissparklingBthisisntcuteanymoreBthirteenBthirdsBthinnerBthinlyB	thinkingsBthinkerBthingyB	thicknessBthickerBthiaBthiBtheybfBtheuBthereofBtherellB
therapistsBtherapiBthequeenbuzzBthepageBtheologicallyB	theofilouBtheoBtheifBthebalmBthearchitecturalityBthawingBthawB
thatrupertBthatllBthatdB	thankyouuBthankkBthankingBthankfulnessB	thanjavurBthangBthaliadBthaimB	thailandsB	thackereyBtgtBtgirlBtgetBtextilesBtextbookBtexasBtexansBtetheredBtetherBtestosteroneB	testimonyBterryB	terrriblyB
terroristsB
terrorisedBterrifyinglyB
terrifyingBterrainsBterpeneBterminologyB
terminandoBterminalB	terlambatBteresaBterbutalineBtentBtensedBtennisBtengeB
tendernessBtemptationsBtempoBtempestuousBtelstraBtelethonB
teleporterB	telephonyBtelegramBtehB	teeteringBteeterB	teensiestBteenagedBteeBteddiesBtechnoBtechnicallyB	technicalBtechfeelBtecBteasesBteasedBteaseBtearingBtearfulBtearedBteapotBteacupsB	teachableBtdyBtchBtbtBtbrBtbhBtaziBtaxesBtaxationBtautBtauntsBtattoosBtattersBtatteredBtatsumaBtateBtastyBtastingBtastefulBtaskedBtarynsBtarynBtarunBtartsBtartletsBtartandheatheredBtartBtargetsB	targetingBtapsBtantrumsBtantricBtanningBtannedB	tankoubanBtanjoreBtanglesBtangledBtangleBtangiblyBtangentBtangBtanBtamponsB	tamperingBtampaBtameBtallyBtallinnBtallestBtalimBtaliaB
talentlessBtakingsBtakerBtakeoverBtakeingB	takeawaysBtakBtaintBtaikoBtaiBtaggedBtaewuhbeoryeoBtacticsBtacticBtacoBtackyBtacklesBtabooBtabloidsBtabbysBsystemicBsystematicallyBsyrupB	synthwaveB	syntheticBsynonymBsynodBsynchronicityBsyncedBsympathizingB
sympathiseB
sympathiesB	sympathicBsymbolB	sylvanianBsydneyBsycfBsyaingBsxeBswoonsBswitzerlandsBswishingBswirlingBswirlB	swingsetsBswingingB	swinelordBswimwearBswellingBsweetyBsweetsBsweetlyBsweetieB
sweetenersBsweepB
sweatpantsBswearingBswathBswapBswansBswanBswampsBswallowsB
swallowingB	swallowedBswagBsuzanneBsuzannaBsuuuperBsustainableBsustainabilitysBsustainabilityB
suspicionsB	suspicionB
suspensionBsuspectsB	suspectedBsusannaBsusanB	survivingBsurvivesBsurvivalBsurrealBsurmountableBsurmiseB	surgeriesBsurgeonsBsurgedBsurfacesBsurBsuppressingBsuppressBsuppportBsuppousBsupportsBsupportivenessBsupplimentsBsuppliedB
supplicateBsupplementalB
supplementBsuppingBsupervisionsBsupervisionBsupervisingB
superstormBsuperstitionsBsuperstitionBsupersensitiveBsuperpowersBsupermarketsB	superheroBsuperfluousBsuperduperreallyB	superdrugB	superbikeBsuominenBsunsetBsunniestBsundryBsundaesBsumthgBsummitBsummeryBsummersBsummedB	summarilyBsumanBsulfatesBsulfateBsukkahB	suitcasesBsuicidalnessBsuicidalB	suffocateBsuffersBsuedeBsudahBsuckeredBsucessfullyB	successesB
succeedingBsuccededBsubwayBsuburbsBsubstantiallyBsubspaceBsubsidizationB	subsidingBsubsideBsubscriptionBsubscribersB
subscriberBsubparB
submittingB	submittedBsubmitsBsubmissionsB	submergedB	submarineBsublimedBsubkectB
subjectiveBsubjeBsubduedBsubdueBsubcontinentBsubbingBsubBstymiedBstylishBstylingsB
stylesheetBstutterBsturdyBstupidlyB
stupendousBstuntedBstuntB
stunninglyBstumbledB	stuffingsBstudsBstuddedBstuckinBstsmBstrungBstruffB
structuredB
structuralBstroppedBstropB	strollersBstrollerBstrollBstrivesB	strippingBstripesBstringsBstridingBstrictlyBstrictBstrickB	stressorsBstressorBstrengthenedBstreakyBstreakedBstrayedB
strawberryB
strategiesB	strategicB
strasbourgBstrappyB	strappingBstrappedB
stranglingBstrandedBstraitsBstrainsBstrainedBstraightforwardnessBstraightenerB
straightenB
straddlingBstpmBstoveBstoupBstormyBstormsBstormingBstonyBstonersBstonerBstomacheBstockingB	stitchingB	stirringsBstirBstipulationBstinkinBstinkBstingyBstimulationBstimpyBstillsBstillerB	stilettosBstigmatizedBstigmaBstiffenB
stickinessBstickerBsticBstiBstewartsBstewBsteroidsBstereotypicalBstereotypesB	stephanieBstenchB
stellariumBstellaB	steinbeckBstefanBsteelyBsteelersBsteamyBstealsBstayviolationBstaveBstatureB	statisticBstationsB	statesmenBstatelyBstasiaBstarvingB
starvationBstarredB	starlightB	standoutsBstanderBstampedBstampBstammerBstaminaBstamfordBstalledBstalkerBstalkBstakedBstainingBstainedB
staggeringBstaffsBstaffedBstadiumsBstaceyBstabbedBstabBsssasBssrBssbaBssaBssBsriBsrcurlBsquirtsB	squirrelsBsquirmedBsquireBsquintB
squelchingB	squeezingBsqueekBsqueeeeBsquealsBsqueakBsquatBsquashBsquareBsqualorBspyBspurtsBspursBspurringBspurnedBspurgingBspurBspruceBsprogBspritzerB
sprinklingBspringyBspringsB	springpadBspringhouseBspreadsheetBspreadsBspoutingBspoutBspottedBspotlightedB
spotlesslyB
sportslineB
sportsbookB	sporkgasmBsporesBspoonfulBspookyBspookBsponsorsB	sponsoredBspongeBspoilsBspoilersBspoilerBspoilBspockBsplutteringBsplurgeBsplendorBsplashesBspitballBspitakBspiralBspinsBspinnerBspinachBspikedBspielBspicyBspicesBspewingBspewBspendyBspencersBspencerBspeltBspellingBspelledBspeedyBspectraB
spectatorsBspectacularB	spectacleB	specimensB	specificsBspecificationsBspecialtiesBspecialnessBspecialistsBspeakershipBspazzolaBspayedBspatsBspasmsBsparshBsparrowBsparringBsparklyBsparkleappleBspammingB	spaghettiBspacyBspaceyBsoxBsoundscapesBsoulessBsoulbitesblogB	soulationBsouBsortingBsorB	soporificB	sophomoreBsophistBsophatBsoothesBsoothedBsooooooooperBsooooooooooooBsoooooooooooB	sooooooooBsonyBsonogramBsonnetBsoniproBsoniaBsongyBsonamBsomthingB
somethingsB	somethignB	someplaceBsomeoenBsomeobdyB	somebodysBsombreBsolvesBsolversBsolopgangforBsolondzBsolomonBsolitudeB
solidarityB
solicitingBsolicitBsoleyBsolesBsolbiBsolbergBsolBsojournBsoftnessBsofterBsoftenBsodiumBsoddingBsoddenBsocketB	societiesBsocietalB	socializeBsocialisingB
socialisedB	socialiseBsobrietyBsoberedBsobbingBsobbedBsoakingBsnugglesBsnuggleB	snufflingBsnuckBsnowpeaBsnowmanB	snowglobeBsnowboardingBsnotfaceB
snorkelingBsnoozingBsnoozelBsnoozeBsnootyBsnoopingBsnoopedBsnippyBsnippetsBsnippetBsnipingB
sniiiiifffBsnifferBsniffBsnideyBsnickerBsnehaBsneerBsneakilyBsneakersBsneakedBsnatchedBsnatchBsnarlBsnarkyBsnarkBsnareBsnappyBsnappedB	snapbacksBsnapbackBsnakeBsnackingBsmuglyBsmsB	smotheredBsmotherB	smoothingBsmoochBsmokesBsmokerBsmokedBsmithsBsmirkingBsmidgenBsmeltBsmellyBsmearsBsmashedBsmashBsmartyBsmartestBsmackedB	smackdownBslurBslungBslumpsBslumBsluggedBslsBslrBslowedBsloughedBsloughBslouchyBsloshyBslopeBslobbyBsloanBslittingBslipsBslipperyBslippersBslipperBslimmedBslidBslicingBslicedBsleeveB	sleepoverBsleepersBsleazyBslaveryBslaughteredB	slaughterBslatsB	slatebookBslashBslappingBslantedBslanderBslackerBslackBslBskullBskudriveBskirtsportsBskipsBskinnygBskinniesBskinnerBskinnedBskinlessB	skimmableBskillzzBskilledBskidBskiBskewsBskellingtonBskeletonBskeletalBskeeredBskddBskatersBskaterBskateBsizzlerBsixtyBsixtiesBsitterBsitingBsithBsistahsBsissyBsiriBsirensBsipsBsingledBsingerBsingedBsinfullyBsinfulBsinestroBsinclairBsincBsinaisBsimultaneousB
simulationBsimsBsimpsonBsimplifyBsimplethoughtsonthingsBsimplestBsimonBsilkyB
silhouetteBsilencesBsiiB	signifiesBsigilBsightsBsighhhBsiganiBsiftingBsiftedBsiestaBsienceBsiegeBsidsB	sidewalksBsidedBsidebarBsicklyBsickenedBsicBshutsB	shudderedBshubhiBshroudedB	shroomeryB	shrinkingBshredB
showcasingB	shovelingB	shouldingBshoudlntBshotgunBshortsightedB	shortnessB	shortlistBshorterB
shorteningBshortedBshortageBshopperBshopliftingBshooterBshonasBshoelessBshoelaceB
shockinglyBshoBshizzBshiversB	shiveringBshitsBshishidoBshireBshimmyBshiftyB	shiftlessBshiesB	shieldingBshhhhhhhBshhhBshhBsherminBsheriffBsheriBshenanigansB	shelteredBsheddingBshaylaBshawlBshavingsBshavedBshatterBsharplyBsharpestBsharperBsharpeBsharksB	sharknadoBsharkBshapingBshapeshifterBshapesBshandurBshampooB	shamelessB
shamefullyBshaltB	shakinessBshakesBshaileneBshahzadBshaftedBshacklesBsfBsexualyBsexistBsexierB	sexaholicBsewageBseveredBseverBsetupsB
settlementBsettingsBsethBsesangBserverBservantBseroquelBsermonBseriousnessBserioulyB	serioulsyBserinaBsereneBserendipityBserenceB	sequencesB
separatingB	separatesBsepangBseoulBseoBsentinelB
sentimentsB	sentimentBsensuousBsensiblyBsensationalistBsensationalBsenpaiBseniorsBsenegalBsendiBsemuanyaBsemiproBseminarBsemenB	semblanceBsellerBselfsBselflessBselfishnessBselenaBselectivelyB	selectiveBselamatBsekBseizuresBseizureBseizingBseizedB
segregatedB	segregateBseepsBseepedBseemingBseemadBseekerBseedyBseduceB
securitiesBsectretBsectorB	secretiveBsecondlyBsecB	sebastianBsebBseasonalBseasBseanB
seamlesslyBsealsBsealBseagullsBscummyB
scrunchingB	scruncherB	scrubbingBscrubbedBscrollB
scripturesBscribbleBscreenwritersBscreenwriterBscreenshotsB
screenshotB
screechingBscreamedBscratchyBscratcheverythingBscrapsBscrapersBscrapedB	scrapbookBscrapBscrambleBscoutsB	scoundrelBscottyBscotchedBscorpioBscornBscoredBscopeBscoopBsconesBscoldingBscoldedBscoffingBscissorsBscimBscientologyB	scientistBsciaticaBschultzBschmidtBschizofrenicB
schindlersBschemesB	schedulerBschaubBschalmBschadenfreudeBschachBscentsB	scenariosB	scavengerBscarredBscarletsBscarletBscariestB	scarecrowBscarceBscapeBscanningB
scandalousBscandalizedB
scamperingBscalesBscafellBscadBscabiBscabbedB	savouringBsavourBsavorB savingyourmarriagebeforeitstartsBsavesB	saunteredBsaunaBsaucesB
saturatingB
satisfyingBsatisfyBsatisfactoryBsatireBsationBsatiatedBsatansBsasukeB	sassinessBsaskatchewanBsashyBsardonicBsarcomaBsarcoidosisBsankBsanitiationBsangriaBsandersBsandblogBsanctumBsanctityBsamuelBsamplesBsampledBsamphireB	salvagingBsalutingBsaluteBsalutaryBsaltsBsaloonBsalonsBsailsB
sailormoonBsailingBsailedBsaiBsagBsadlovequotesforhimBsadisticBsadhanaBsaddledBsaddleBsaddestBsadderB
sacrificesB	sacramentBsachetsB	sachayingBsabrinaBsabaBryotaBryodanBrylinBryeowookBryeBryderBrvBruthBrustlingBrustleBrustieBrussellBruslanBrushesBruralBruptureBrupaulBrunninBrunnethBrundownBrumourBrumbleBrumBrukiaBrugmiBrufusBrufflingBrueBrudolphBrudleyBrudimentaryBrudelyB
rudderlessBrucksackBrubiesBrubbleBrubbingBrubbedBrubBruachBrtBrrreeaallyyBroyBrowingBrowanBroutinesBroutesBrousedBroundlyBrounderBroundaboutsBrotundBrotationBrotatesBrosterBroslinBrosesBrosemaryBroseanneBrosaryBrosaBrosBrootedBroostersBroosterBroomatesBronBrommelBromcomsBromanticisingBromanticallyBromanBrolleredBrolingBrolexBrogerBroethisbergerBrodarteBrockstarBrocketteBrocketedBrocketBrockersBrockedB
rockabillyBroboticBrobotBrobinsBrobertoBrobertBrobbingBrobBroastingBroastedBroarBroamBrlshBrivaBritzBritualsBritualBritalinBritaBriskyBriskedBripplingBripeBriotsBriotousramblingBrinsingBrinoaBringtoneBrinBrileyBriledBrikuBrikkisBrihannaBrigsB
rigorouslyBrigorousBrigidB	rightnessBrightfulB	ridiculedBridgerunnerBriddingBriddenBrichesBribcageBribbonBribBrhythmicBrhymesB	rhinebeckBJrfttttttttttsjiowefmklldkavsvdsbtwrsbdvfocxfibjxrklrgrmvaeridubneosdvfrwfdB	rewritingBrewindBrewardsB	revulsionBrevovlesBrevolvesBrevolveB
revisitingBrevisitBrevisionBrevisingBreviseBrevisB	reviewingBreviewerBreversesBreversedB	reverenceBreverberateBrevelryBrevelingBrevelationsBrevedBrevealthestaryoutrulyareB	revealingBrevampedBrevalidationBreutersBreuseBreusableBretryBretrofittingBretroBretributionBretortedBretartedBretardedBretainsB	retainingB	resurrectB
resuppliedBresumesBrestsBrestroomBrestrictionsB
restraintsB
restrainedBrestrainBrestoresBrestoreBrestorationBrestlessnessBrestiveBrestfulBrestaurantsBrestartBrespirometryBrespectsB
respectingB
resonatingB	resonatesB	resonanceB	resolvingB
resistanceB
resilienceBresignBresidueBresidingBresidentialBresidentB	residenceBreshapedBresetBresentmentsB	resentingBresembleBresemblanceBresearchingB
researchedBreseachB	rereadingBrequirementsBrequirementB	reputableB	repulsionBrepulsedB
republicanBreprogrammingBreproductiveB	reproduceBreprieveB
repressiveB
repressionBrepressBrepresentedBrepresentativesBreplicaB	replenishBrephraseB
repetetiveB
repertoireBrepercussionB	repentantB	repeatingBrepeatedB
repairmentB	repairmanB	repairingBrepairedBrepBrentBrenovationsBrenegingBrenderBrendallBrenaissanceBrenBremovingBremovedBremoursefulB
remotionalB	remodeledBremixB
reminiscedBremembrancesBrememberiingBremedialBremarryBremarkBremandedB	remainderB
reluctanceB
relocationB
relocatingBrelivedB	relishingB	relievingBreliantBrelentlessnessBrelentedB	relegatedBrelayingB	rekindledBrekindleB
rejuvenateBrejoycedBrejoiceB	rejectingBrejecteB	reiterateB
reinforcesBreinforcementBreincarnationBreidB
rehearsalsB	regulatedBregroupBregroundB
regrettingBregretsBregoBregistrationB
registeredBregionalBregimeBreggieBreggaeBregentsBregattaBregardedB	regainingBrefusesBrefugeesBrefrenceB	reframingBrefluxBreflexBreflectsB
reflectiveBreflectionsB
reflectingBrefineBrefillBrefersBreferredBrefereesBrefereeBreferedB	reexplainBreevaluatingBreestablishBreeseB	reelectedBreelBreeeeeeeeallyBreedBreducingBreducedBredshankBredsB
rediculousBredheadBreddenBredcoatB	recyclingBrecycledB	recurringB
recruitersB	recruiterBrecreationalBrecourseBrecordsBrecordedBreconciliationB
reconciledB	reconcileBrecommendingBrecommendedBrecommendationBrecollectionsBrecollectionB
recognisesB	recogniseBreclessBreckonedB
recklesslyBrecitingBreciteBreciprocatedBreciprocateB	rechargedBrecessB	receiversBrecedeBrecB
rebuildingBrebuildBrebootedBrebelsB	rebellionBrebekahBrebeccaBreauraB
reassuringBreassuranceB
rearrangedB	rearrangeBrearedBreapplyBrealnessB	realitiesBrealismBrealisationBrealiBreaganB
reaffirmedBreadmitBreactsBreactorBreactiveBreaaallyyyyBreBrazzleBrazoBraymondBrayaBrawlyBravioliBravenousBravagedBrattledBrationsBratedBratbagxBrashesBrapsBrapportBraposaBrapistBrapingBrapidBrapesBrapacityBrantedBransomBranksBrankBrangingBrandythomasBrandBranbirBranautBrampantBrampageB	rammsteinBramadanB	rainbootsBraidingBraiderB
rafinamentBrafaelBradiologistsBradicalBradiatorBradiatesBradarBradBrackingBracketBrackedBracinBracialBrachBrabiolaBrabbitsBquotedBquotaBquorumBquixoticBquixoteB	quiveringBquiverBquittingBquitterBquinnBquiltyBquiltedBquiltconBquickenBquenchedBquellBqueezyBquantumBquantityBqualmsB	qualitiesBquakingBquakerBquadBqqBqafBqaedaBqaBpythonB	pyongyangBputterBputridBputersBputeriBpushesBpursuitBpurseBpurrrrBpurplesBpurgedBpurelandB
purchasingB	purchasesB	purchasedBpuppiesBpuppetB	punishingBpunditsBpunctualBpunchingBpunchedBpunBpumpinBpulsedBpulsarsBpulpitBpulpBpukeyBpuffBpuddingB	publishesB	publishedBpublicationsBpubiclyBptsdBptptBptlBptkBptiB	ptbertramBpsychopathologyB
psychopathBpsychologistsBpsychicallyB
psychiatryBpsycheBpssshBpsalmBpsBpryBpruposeBprudentB	proximityBprowlBprovokingbeautyBprovokeBprovinceBproviderB
providenceBprovesBproudlyBproudestB
protrudingB	protocolsBprotocolBprotoBprotectsBprotectivenessBprostitutesB
prosperousB
prosperityB
prosecutorBprosecutionsB	prosecuteBproseB	proscuitoBprosBpropsB	proposalsBproposalB	proportedB
proponentsBproplemsB
propagandaB
pronouncedBpromptsB
promptingsBpromptBpromotionalBprominentlyBprolificB	projectorB
projectionB
projectingB	projectedBprohibitionB
prohibitedBprogressivelyBprogressiveBprogressionBprogesteroneBprogenyBproffersBprofessionalsBprofessionallyB	producersBproducerBprocureBprocrastinatorBprocrastinatingB	proclaimsBproclaimB
processionB	processedBproceedsBproblemnBproblematicBprobingBprizecompetitionB
privellegeB	privatelyBprivacysBpriusBpristineBprioritisesBprincesB	primitiveB	primetimeB	primariesBprimaB	priestessBpridefulBpricksBpricklyBprickedBpreviewB
preventionB	prevalentBprevailsBprevailBpretzelB
prettymuchB	prettiestBpretendsB	pretendedBpretBpresuppositionBprestigeBpressurizedB
pressuringBpressiesB
presidencyBpresentationalBpreschoolerB	prescenceBprequelBprepubescentBpreppingBpreparationsBprenatalBpremonitionsBpremonitionBpremiumBprematurelyBprelimB	prejudiceB
prejudgingBpregnanciesBpregantB	preformedBprefersBpreferencesBpreemieBpredictionsB
predictingB	predictedBpredictB
predicatedBpredicamentBpredecessorBpredawnB	predatoryBpredatorBprecludeB	precisionB	preceptorBprebookB	preaknessBpreacherBpreachedBprawnsBprawnBprandiBpranceBpramBpraisingB
practiciesB	practicesB	practicedB
prabhupadaBprBppBpowellBpoutingBpoundedBpouhereBpottyB	potteringBpottedBpotionBpotholeBpotentBpotatoeBpotatoB
postponingBpostingsBpostersBpostcardB
possessiveB
possessingB	possessesB	possesiveB
positionedBposiesBposhBposeurBposesBposerBposedBposeBportuguBportugalB
portrayingB
portrayalsBportraitureBportlyBportiaB	portfolioBportableBporkBporgieB	porcupineBporchB	porcelainBporBpopeyeBpopeBpopcornBpooperBpoopBponyBponderedBpondBpompomsBpomegranateBpolyvoreBpolytechnicBpolyamorousBpoloB	pollutionBpollingB	pollicinoBpollenBpolishesBpolishedB	policemenBpolentaBpoleBpokesBpokedB	poisonousBpoisonBpointyBpointlessnessBpointlesslyB
poignantlyBpoignantBpoguesBpoggyBpodiumBpocketsBpocketbooksBpochayivBpoachingBpoachersB	pneumoniaBplyBplutoBplushBpluralsB
plummetingBplummetBplumbBplumBplugsBpluginBployBplowingBplotsBploddedBpleinBpleeeeeeaseBpleaserBpleasentBpleasantnessBpleasBpleadB
playwrightBplayroomBplayoffsBplaylistBplayhousecommB
playgroundBplaydateBplayboyBplatonicB
platitudesBplatesBplateausB	plastikanB	plantingsBplanterBplantarBplankBplainlyBplagueBplacingB	placementBplacceBpixiesBpixarB
pittsburghBpitsBpitocinBpitiedBpitchersBpitcherBpitchBpistolsBpistolBpistilBpissyBpissingBpissBpiratesBpirateB	pipsqueakBpipesBpipedBpiousBpioneersBpinsBpinotBpinningBpinnedBpinnacleBpinkyBpiningBpingBpinewoodBpinesBpineBpinchedBpimplesBpimpleBpillowsBpillerBpilingsBpilferedBpileonBpiledBpilatesBpigsBpigeonsBpiercingBpiercedBpierceBpiddledBpiddiBpicturesqueBpicoultBpicnicsBpickupBpickleBpiaBpiB
physiologyBphysicsB
physiciansBphysicalityBphyicaBphotoshootsB
photoshootBphotojournalisticallyBphotographicallyBphotographicBphotographedBphoenixBphobiaBphiltersBphilosophicalBphilosopherBphilBphewB
phenomenonB
phenomenalB	phenomenaBphasesBphantomwiseBpgceBpgBpewsB	pettigrewBpetsBpetitionBpetalsBpetaB
pestilenceB
pesticidesBpestersBpesterB	pessimismBpesachBpervertB
perversionB	pervasiveBperuseBperusalBpertainBpersuasivelyB
persuasionBpersuadeB
perspiringBpersonifyingB	personalsBpersonalizedBpersomB
persistentBpersistenceBpersistB	persevereBperserverenceB	perplexedBperpetuatingB
perpetuateBperpetratorB
permittingB
permissionB	permeatesBpermeateBpermanenterB
permanenceBperksBperishablesBperilsBperilBperfumesBperfumedB
peregrinosB
percolatedB	percievesBperceptionsB	perceivesBpepperBpenyeriBpensiveBpensionsBpenniesBpenitentialBpenetratingB	pendletonBpendingBpendantBpenanceBpelvicBpeltsBpeiceBpeggyBpeggedBpeetaBpeepBpeelingBpeekBpeeingBpedicureBpediatricianB	pediatricBpedestriansBpedalsBpeculiarBpeasyBpearlBpearBpeanutsBpeanutBpeachyBpeachesBpeachBpeacefulnessBpeaBpcmBpcBpbssB
payperpostBpaypalBpayoffBpayersBpawsBpawnBpawdicurBpawBpavingBpausesBpauloBpaulieBpattyB	patronizeBpatronisingB	patrimonyBpatioB	patientlyBpathologicallyBpathologicalBpathanBpaternalBpatentBpatelB	patagoniaBpastsBpastasBpassiveBpassionsBpasserbyBpasserB
passengersBpassengeredBpassagesBpassageBpasBpartysB	partitionBpartialBpartedBparmesanBparlorBparliamentaryBparkerBparisianBparishesBpariahB
parenthoodBparatroopersB
paraphraseB	paranoiudBparamilitaryB	paralyzedB	parallelsBparableB	paperworkBpapermakeupstampsBpapasB	paparazziBpapamokaBpapBpantyBpanthersBpanormaBpaniBpandoraBpanderBpanBpamBpalsBpalpablyBpalinBpalestiniansBpalcebowhoresBpalateB	pakistaniBpajamasBpajamaBpairingBpainstakinglyBpainingBpailBpaigeB	pageviewsBpagetypeBpagersBpaganBpaellaBpadlockBpacquiaoBpacmanBpacksBpackagesBpackagedBpacingBpacifiedBpacificB
pacesetterBpaakerBpaBoyyyBoxtailBoxbowB	ownershipBowenBowBoverwhlemingB
overwhelmsBovertookB	overtonesBovertlyBovertimeB	overthinkB	overtakenBovertBoversteppingB	oversleptB	oversizedBoversharingBoversBoverrrrrrrrrrrrBoverreactingBoverreactedB	overratedB
overpowersBoverpoweredB	overpowerB	overnightBoverlappingBoverlandB	overjoyedB
overheatedBoverhearingBoverhearBoverheadBoverhaulBoveremotionalBovereducatedB
overeatingBoverdueBoverdramaticBoverdoseBoverdoneB	overdoingBoverdoBoverconfidentBovercompensateB
overcommitB	overcometB	overcomesB	overboardBoveranalyzedB
overactiveBovenBovationsBovationBovariesB	outweighsBoutweighBoutwardBoutstretchedBoutsprintedBoutsourcingB	outsourceBoutsizeBoutsidesB	outsidersBoutsetBoutsBoutroB	outragingB
outrageousBoutrageBoutpouringsBoutlookB
outlandishBoutgrownB
outfittersBoutdidBoutburstBouchBouBotherworldlinessB	osteopathBospBoscillatingBoscarsB	orthoticsBorthodoxBorthodontistBorphansBorleansBorlandoBorissaBorihimeB
originatedBoriginalityBorgyBorgasmicBorgansB
organizingBorganizationalBorganiseBorganBorgB
ordinancesBordersBorderlyBorderingBorcisBorciBorangesBoralBoraBorBoptimistBoprahB
oppressiveB	oppressedB	oppositesBopposeBopponentBoppiesBopiumBopisBopinonsBopinionatedBopiatesB	operatingBoperaBopennessBoozingBooohBoomphBoogleBonwardsBontologyBonscreenB	onlookersBonionBonguardBoncologyBoncologistsBomittedBomissionB	ominouslyBominousBomegleBomegaBomeBomdBomangyBolympicsB	olympiansBollieBoliviasBoldenBolajideolafunmbiBokcBoiutBoilinessBoilersBoftB	officialsBofficesBofficersBoffhandB	offeringsBoffenderBoffenceBoeuvreB
oesophagusBodorBodonnellBodkhBodeonBoceansBocdB	occurringB	occupyingB
occupationBoccultBoccassionallyBoccassionalB	obtainingBobstacleB	obssessedBobsessivelyB	obsessiveB	obsessingBobservedBobserveBobservationsB	observantBobrianBobnoxiouslyB	obliviousBoblivionBobligeB
obligatoryBobjectivelyB	objectiveBobeysBobesityBoberoiB	obedienceBobbieBoakwoodBoaklandBoakBnytimesBnypsBnylonsBnyBnwBnvmBnuttyB
nutritiousBnutritionallyBnutritionalBnutrientBnursesBnursedBnuptialsBnunB	numbinglyBnumbingBnuhBnuffBnudistsBnudgingBnudgesBnuancesBnuanceBntowardBnthingBnprBnozomiBnowwwwwwBnouveauBnottingB	notorietyB	notifyingBnotifyBnoticerB
noticeablyB
noticeableB	noticableBnothnigBnothingnessB
noteworthyBnotciedBnotchBnostrilB	nosebandsBnorthwesternBnorthernBnormsB	normativeB
normalizedB	normalityBnormaB
nordstromsBnorahBnopeBnoorBnoooBnookBnoodlesBnoobBnonexistentBnonexistenceBnondescriptBnonchanB
nonchalantBnonbipartisanBnommingBnolongerBnoleansBnokiaBnoisiestBnohBnodsBnoconscienceBnobuBnobleBnlBnitcheBnitchBnissanBnipplesBnippedBnipigonBnipBniniBninewestBnineteenBnillyBnikosBnikolasBnikoBnikkiBnikBnijifagilieB	nightlifeBnightiesB
nighthawksBnightersBnigglingBnigglesBniggaBnigeriaBnigaBnieceBnicuBnicosBnicoleBnicolaBnicknameBnickeyB
nicholsonsBnicheBnicestBnicBnibblingBnhsBnewtonB	newsprintBnewrhinegargoyleBnewlyBnewerB	newcomersBnevilleB	nevermindBnevercontraryBnevaBneuroticworkaholicBneurosurgeonsBneunBnetworksB
networkingBnestyBnestledBnestingBnesBnervsB	nervouslyBnervouseBnephewsBnepaliBneottaemuneBneoreulBneoneunBneonBneolBneoBnemoBnemesisBnellieBneilBneighbourhoodBneighborhoodsBneighborB
negotiatorB
negligibleB	negativesB
negativelyBnegatedBnegateBneferetB	needinessBneedinBnedsBnecessitiesBneatBnearingBnearestBnearbyBnealBnaziB
navigatingBnavigateBnauseasBnaturesBnationalismBnathansBnatashaBnastilyB	nashvilleBnarrowedBnappingBnapkinBnaomiBnannyingBnancyBnanashiBnanaBnamjaBnamelyBnamelessBnamanBnalB	nakednessBnakaharaBnaivetyBnailartBnaightBnahariyaBnagaleneBnaegenBnaegaBnadiaBnachosB	mythologyBmythologiesBmythicalBmysuruBmystiqueB	mystifiedBmysticalB
mysteriousB	mysteriesBmysoreBmyslefBmysalvagedtreasuresBmyelfBmychemBmxmBmuzeB	mutteringBmutteredBmustyBmusteredBmusterBmustardB	mustachedBmuslimsBmusingB	musicjuzzBmusicianshipB	musicallyBmushyBmushroomBmuseumsBmuseumBmusesBmuseliBmuruaBmurtB	murreletsBmurmursBmurmurB	murderingBmurdererBmuralBmurakamiBmunroeB	munnabhaiBmunBmumblingBmumbledBmultitaskingB
multipliedBmultiplicationBmultiplayerB	multibandBmullingB	mulligansBmulledBmullBmulattoBmukerjiBmujheB	mujahedinBmugBmufflingBmuffledBmuffinsBmuddlingB	mudbloodsBmucusBmuazBmuayBmuBmtBmsoBmsmBmrtBmriB
mrdanbairdBmpsB
mozzarellaBmozBmoxieBmovignBmoversB	mouthfulsB	mouthfeelBmouthedBmousseB	mousekinsBmousaviBmountsBmoundsBmoundBmouldingBmouldBmotorwayBmotorcyclistB
motorcycleB	motorbikeB
motivatorsBmotivationsB
motivatingBmotivateBmotherloverB
motherlandBmotelBmossBmoshavBmortuaryBmortgageB	mortalityBmorselsBmorselBmorrowB	morrisseyBmorrisBmorphedBmormonsB	mormonismBmorlaBmoribundB	moriartysB	morgantonBmorganBmoreoverBmordBmorbidlyBmoralityBmoppingBmopingBmopeyBmopBmooshiluBmooseBmoonlightingB	moonlightBmoonbeamBmoochingBmontheBmontaukB	montaguesBmonstersBmonroeBmonopolyBmonogrammedBmonkeysBmonkeesB
monitoringBmonicaBmongooseB	mongeringB
monetarilyBmonasticBmonarchsBmonarchBmonBmommysB	mommyhoodBmomentumBmombasaBmolyneuxBmollyBmolluskBmolinaB	molestingBmolestedBmoldBmoisturizingBmoisturizedBmoisturiserBmoistureBmoistB	mohdashifBmohammedBmogulBmoffatBmoeBmodulesB	modifyingBmodifyBmodifiedBmodificationBmodestBmodesBmodernizationBmodelsBmodelingBmockedBmobilityBmobileclassBmobbedBmobBmoandayBmmfBmkBmizukiBmiyaviBmixerBmiteBmitchellBmisusedB
mistressesBmistressBmistreatmentB
mistreatedBmisterBmistakenBmisstreatedBmisspeltBmissionsBmissileBmissgivingsBmissesBmisscariageBmisrepresentedBmisrepresentBmisogynistsBmisoBmisledB	misjudgedBmisinterpretedBmisinformedBmishapsBmishandlingB
mishandledB
misgivingsBmisfortunesB
miscreantsBmischiefBmisBmirrorsBmiredBmireB
mircowavedBmiraculouslyB
miraculousBmiraBmintBminsBminorsB	ministersBminisshaB	minisculeBminimizeBminimiseBminibusB	miniatureBmingledBmingleBminesBminervaBmineralsBmindlessBminajBmimmBmimicB	mimedogerBmilongaBmillyB	millionthB
milligramsBmillerB	millenniaB	milkshakeB
milestonesBmilerBmilBmikalaBmihmBmigrateBmigraineBmightyB	midwiferyBmidwifeB
midwesternBmidoriBmidnightBmidlifeBmiddotB
midcenturyB	microcosmB	michigansBmichaelsBmiceBmicaBmicBmgBmexigothBmettafulBmetropolitanBmetresBmetierBmeticulouslyBmethodicallyBmethinksB	metforminB
metastasisBmetaphoricallyB
metaphoricBmetalsB
metabolismB	messianicBmessesB	messagingB	mesmerismBmesBmersonBmermaidhaireBmeritsBmeridaBmericanBmergeBmerekaBmercilesslyB	mercilessBmerciesBmerasaBmentorBmentelBmensesBmensaBmensBmeningiomasBmendBmenasheBmemsetB
memorizingBmemorialB	memorableBmemesBmembresBmeltyBmeltsBmeltdownBmelonomaBmelodramaticallyB	melodiousBmellonBmeleeBmeingBmehowBmehBmeekBmediterraneanB
meditativeBmeditateB	medicatedB	mediationBmediateB	mechanismB
mechanicalBmeatyBmeathB	meatballsB
meaningfulBmeanderingsBmeadowBmdaBmdBmcslackersonBmcravenB	mcphersonBmcgonnagallB
mcgarrigleB	mcdonaldsBmccarthyBmccannsBmcasBmbourgonBmazeBmayorBmayoBmaybeeBmaximizeBmaximiseBmaximBmauryBmaturityBmaturestudenthanginginthereBmattyBmattressBmatthewBmatteBmatingBmatinBmathsBmathematicalBmaterialisticBmaterialistBmaterialiseBmateBmatchingBmatchedBmatB
masturbateBmasteryBmasteredBmassouB	massagingBmasonB	masochistBmashmellowsBmasculinityBmaschkeBmascarasBmascaraBmasBmarzzzBmarylandBmarybethB	marvelingBmartinezBmartinaBmartenBmartBmarshmallowsBmarshalBmarredBmarloweBmarlonBmarlinsBmarkingBmarketerBmarkersBmarjaneBmarinadeBmarilynBmarillacBmarillaB	marijuanaBmariahB
marginallyBmargeBmargaretBmarchingBmarblesBmarbledB	marathonsBmaraBmapBmanuscriptsBmanureBmanufacturingB	manuchehrBmansoorBmansionBmannersBmanlyB	manlinessBmanitzBmaniradoBmanipulkatedB
manipulateB	manifestsBmanifestationsBmanifestationBmanifestBmanicureBmanicBmaniacalBmanhoodB
manhandledBmangoesBmangedBmangaB
maneuveredBmaneuverableBmaneBmandatedB	managmentBmanagingBmanagesBmanagersB
manageableB	mammogramBmammalsBmalteseBmalmBmallratBmalkinBmalignedB	malignantBmalesBmaladaptiveBmalaccaBmalBmaksBmakmurB	makeshiftBmakersBmakeoverBmajesticBmaintenanceBmaintainingB
maintainedBmaineBmailsB	mailorderBmailingBmailboxBmaiBmagzineBmagnumB	magnitudeB
magnifyingBmagnetsBmagnateBmagnanimityB	magicallyBmagiB	magazinesBmaeveB	maelstromBmaeBmadreB	maddeningBmaclaineBmackBmachoB	machineryBmachiavellianBmaceysBmacendarferBmacabreBmBlynchedBlymeBlymanBlveBlvBluxeBlusciousBlurkerBlurkBluringBlurgyBlupronBlungfulsB	lunchroomBlunchesB	luncheonsBlunarBlunapadsBlunajubileeBluminaryB
luminariesBlumiaBluluBlullsBlulledBlukaB	luftwaffeBlucksBluarBlsdBlrtBlpBlowlyB	lowlightsBlowestsBloweringBloweBlowdownBlovinglyBlovinBloveyB	lovesongsBloveinBlovediB	lovecraftBloveboxBlousBloungingBloudonsBlouderBloucheB
louboutinsBlotusBlotteryBlotteBlottaBlotionBlothaireBlososBlosesBlorenaBlorealBlordeB
loquaciousBlooterBlootBloosesBlooserBloosenBlooooongBloomingBlookoutBlookinBlonleyBlonglastingBlongingsB	longinglyB
longbottomBlolololBlollypopBlolllB	lollipopsBlolitaBlolaBlokpalBloinsB	logisticsB	logicallyBloggedBlogarythmicBloftBlodgedB
locomotiveBlocationBlocatedBlocaleBlobiaBlobeliaBlobbyingBloathedBloadaBlllBllerBlizzyBlizardsBlizBlividB	livevideoB	liverpoolBliverBlivejournalsBliveagainsttheflowBlivBlitteredBlitteBlitsenB
liteheadedBliteBlistersBlisasBlirianoBliquidBliqueurBlippmannBlipbalmsBlinusB	linklaterBlinkedinBliningBlinguisticsBlingoBlingerBlindoBlindaBlinBlimplyBlimitingBlimesB	limelightBlimbedBlilongweBlikewiseBlikeguyB
likeaudreyBlikBlightweightB	lightsyncB
lightmeterBlightheartedBlightheadedB	lightenedBlifespanBliekBliebsterBliebkindBlidsBlidBlicenceB	librariesBlibidoB	libertineB
liberationBliberalsBlibBliamBliableBlexiconBlexBlewisBleveledBlevBletteBlethalBletdownBlestatBlestariBleslielandbergBleslieBlesbianBlesBleopardBleonardBleoBlentenBlentB
lensflaresBlensBlenoirBlengthsBlenghthBlendsBlendingBlendersBlemurBlemonyBlemmeBlejerB	leisurelyBlegtimatelyBlegosBlegoB
legitimizeBlegitematelyBlegislatorsBlegionBlegardBlegallyBlegalityBleftyB	leftoversBleesBleersBleechesBlecBleaseBleasB	learningsBlearingBleansBleanerBleanedBleakBleafyBleadingstringsBleadenBleBlcdBlazeBlayeredBlaxBlawyersBlawyerBlawrencewashingtonBlawnBlawlessBlavigneBlavenderBlavanderBlavaBlaurelsBlauraBlauperB
launderingBlaugingB	laughableBlatticeBlatteBlatleyBlathiBlatexBlateralBlatchBlastingBlaserBlarryBlargestBlardBlappedBlapelsBlankasB	languagesBlanguagedirectionBlandscapingB
landscapesBlandsBlandmassB
landlubberBlandlordBlandingBlancesBlaminateB	lambruscoBlambBlamaBlajoieBlaiyaBlairBlahBlaggingBlaggedBlaetshiBladybitsBladdiesBlacyBlaconicBlackedBlaceysBlaceB	labyrinthBlabsBlaborsBlabiaBlabelledBlabelingBlabeledBkyuhyunBkxBkuwaitBkurtBkuribayashiBkunBkumarBkulihatBkuehBkudosBkubricksBkrupkeBkristieBkristiBkristaBkremlinBkremBkrakauerBkoyamaBkotaBkoreansBkookBkongBkompanyBkomeBkoloBkodiBknwingBknucklesBknowlegeB	knowinglyBknottingBknottedBknotsBknittersBknitterBkneltBkneelsBkneelBklystaBkleinkindersBkleinBklausBkjBkiyoshiBkivinenBkitweBkittiesBkittBkitsBkitobenBkithBkitesBkisserBkinshipBkinisonBkindestBkindergartenersBkinddaBkindaishBkinaB	kilometreBkilljoyBkillersBkierkegaardB	kidnapperBkidnapBkiddyBkiddiesBkickoffsBkiatBkhiBkhezefBkhatsiiBkhartoumBkhalifaBkeywordsBkeynotesBkeyedBkeychainBkevinBkerryBkerouacBkermitB
keptinsideBkenyaBkendoBkelseyBkeithBkeitaBkeikoBkeepmeinstitchezBkeeperBkayleBkatrinasBkatrinaBkatnisssBkatjaBkatieBkathyB	kathumpedBkateBkatanyaBkatB	kastriotiBkassimBkaruaB	karmardavBkarmaBkarinBkarenaBkareenaB
kardashionBkardashiansBkarapiroBkaraBkaoBkansasBkangnaBkandalBkamikiBkamenBkameBkaliBkalaBkakashiBkairiBkaikoheBkaddishBkacangBkaBjzBjuvenileBjustwhenB
justquiltnBjustlyB
justanswerBjurysBjurerBjungeunsBjunBjumpyB
jumbleuponBjumbleBjuliemadbloggerB	juliannasBjulianBjugraBjugglingBjudyB	judgmentsB
judgmentalBjudgementalBjudeoBjudeBjubilationsB
jubilationBjtwooBjtBjskBjsBjrpgsBjrockBjreyezBjoyfullyBjoviBjourneysBjournalistsB	journaledBjotBjosephBjoongsBjontiBjonnyBjongwoonBjongBjonesingBjonathanBjonalynBjoltedBjoltBjoleonBjokedBjointlyBjointBjoieBjohnsonB
johnnykajeBjohnnyBjohannBjogsBjoglessBjoggingBjoggerBjogBjoeysBjoeyBjoelBjoeBjoanBjivesBjitteryBjinglyBjinBjimmysBjimmyBjiltedBjillianBjigsawBjigBjiaBjhbdjhdfbjdfhbfdBjetsBjetBjestBjessicadickinsongoodmanBjessicaBjesseBjessBjeromeBjerksBjerkedBjeraldBjeoldaeBjeoffreyBjensensBjenniferBjennBjeneBjenBjehovahBjeeredBjeepBjediBjeannieBjeanetteB	jdeliveryBjchoBjazzyboyBjazzedBjaysonBjavaBjasonsBjasmineBjarsBjarethsBjaredBjanneBjanisBjanineBjanelleBjammedBjamiesBjamiatBjambaBjamaicaBjamBjalopyBjalapenoBjakunBjajajaBjahmeneBjagBjaeryongBjadiBjadesBjacyntheBjacqueBjacksonvilleBjackieBjacketsBjabgeoBiyaBiwsBivyBivspiritBitvBitunesBittttBitsyBitgeB
iterationsB	itdamyeonBitchyBitchBissuedB
israelitesBisraelisBisraeliBisprivateblogB	isprivateBisolateB	isobelmegBismsBismobileBismailyBismBislandsBisightBisiBisabellaBirwinsB
irritationBirritantBirritabilityBirrevocablyBirresponsibleBirresponcibleBirresistibleBirresistableBirreplaceableBirreparablyBirregardlessB
ironicallyBirlBirishBirfanBireunBircBiraqiBiqBiosBiolaniBinvolveB
invocationBinvitationsB	invisibleBinvestigatorsBinvertedB	inventoryBinventedBinvasionB	inundatedB	intuitiveBintubateB	intrusiveB	intrusionB	introvertBintrospectiveBintroducingBintroB	intricateBintrBintoxicationBintoxicatingBintolerablyBintoBintimidationB
intimidateB
intimatelyB	intimatedBinthewarmholdofyourlovingmindB	interveneBintervalBintersexB
interruptsB	interruptBinterpretedBinterpretationsBinterpersonalB
internshipB	internistBinternetsphereB	internetsBinternalizedBinternalizeBintermittentBinterminableBintermediariesBintermarryingBinterlochenBinterferenceBinterestinglyBintercessorBinterceptionsBinteractiveBinteractionB
interactedBinterBintentsBintentionalityB	intensiveBintensifyingB	integrateBintactBintB	insyallahBinsularBinsufficiencyBinstrumentalBinstructorsBinstructablesBinstillB
instigatedBinstantBinspiteBinspirationsBinspectBinsistedBinsipidB
insightfulBinsiderB	insecuredBinsectBinsdieBinscrieB
insatiablyB
insatiableBinsanelyBinsBinquisitiveBinquisitionBinquiredBinquireBinnuendoB
innovativeBinnovationsB
innanimateBinnBinloveBinlineB
injusticesBinjuringB	injectionBinjectedB
initiationBinitallyBiniB
inhumanityBinhumanBinhospitableB
inherentlyBinhalersBinhalerBingridB
ingredientB	ingrainedBingrainBingorantB	ingeniousBinfusionB
infrequentBinfpB	informingBinformationalBinformalityBinformBinfluentialB	inflictedB	inflatingBinflatedBinflammatoryBinflammationBinfieldB
infidelityB	inferringBinferiorityBinfatuationBinfantryBinfantBinfamousBinfactBinexplicablyBinexperienceBinexcusableBinescapableB
inequalityBineptBineffectualBineffectiveBindyB
industriesB
indulgenceBinducingBinducesBinduceBindisputablyBindiscriminatelyB
indirectlyBindigestionB
indigenousBindifferentBindieBindideBindicateBindependentlyB
indenturedBincrementallyBincredulousBincredulityBinconveniencedBinconsistentBinconsiderateBinconsequentialBincomingBincomesBincoherenceB	inclusionBinclinationsBinclinationBincisionB	incidenceBincheswhyinchesB
incestuousBincestBincessantlyB	incessantB
incentivesBincapacitatedBincalculableBinboxB	inbalanceBinaugurationB	inauguralBinappropriateBinapporpriateBinadvertentlyB
inadequacyB
inadaquateB
inactivityBinactionB
inaccurateBimpudentBimprovisingBimprovB	impromptuBimpressionableB
impressingBimpoverishedB	impotenceBimposeBimporantBimplyBimplicationsBimplementingBimplantsBimpingB	impetuousBimperturbableB
impersonalBimperialismBimperfectionBimpenetrableB	impactingBimmobileBimmigrationB
immigrantsBimmerseB
immedietlyBimmaBimitatesBimingBimdoingB	imbicilicBimbibedBimanB	imaginaryBimagiBimageboxBimaBillustrationsBillustrationBillustratingBillustratedB	illusionsBillogicallyBillinoisBillicitsBillicitBillegitimateBillegalBilBiiiBiiBignreB
ignorantlyBignitingBignitesBignitedBigleBightBiggyBigBifyouwanttoknowBidyllicBidreamcultureBidrcBidlingBidleBidiosyncrasiesBidiocyBideologyB
identifiedB	identicalBideallyB	idealizedBidcBidahoBickBicaBibleeditoutBiaBhyunjinBhyundaiBhyunBhypothermiaBhypocriticalB	hypocrisyBhypnosisBhyphenBhyperventilatingBhyperthyroidismBhypersexualBhyperemesisBhyperchondriaBhymnBhygieneBhyenasBhyenaB	hydrationBhydeBhyBhwBhurtledB
hurricanesBhurlingBhurlBhungoverBhungersBhunchBhunB	humungousBhumpBhumourB
humorouslyBhumoredB	hummpffffBhummingBhumiliationBhumiliatingBhumidBhumbugsB	humbugishBhumbugBhumblyBhumblestBhumanlyBhumanizeB	humanitysBhumanbeingsBhuiBhuhweBhuhuhuBhughBhuggedBhugelyBhudsonBhuddledBhudaBhubbieBhubbardBhuBhspsBhspBhrBhpBhowlingBhoveringBhovelBhoustonBhousingBhousesB
housematesB	housekeepB
householdsB	hourglassBhotshotBhotlineBhotestBhotelsBhostsBhostingBhostedBhostageB	hospitalsBhospitalizedBhospitalityBhorseyBhorrorsB
horrifyingB	horrifiedBhorrificBhorrendouslyBhornedBhormonalBhorizonBhoppersBhopperBhopefullBhoopsBhooksBhookingBhookerBhookedBhookahBhonoluluBhonkerblonkedBhongBhonedBhoneBhondurasB
homophobiaBhomisBhomeyBhomesickishBhomeschooledB
homeschoolBhomepageB
homemakingBhomelessnessB	homelandsBhomelandBhomageBholyheadB	hollyoaksBhollowsBhollowayBholliBhollersBhollerBhollandBholisticBholierBholderBholdenBhohohoBhogmanayBhoggingBhockneyBhobnobBhobicaBhobbsBhoardsBhoardingBhoardersBhoardBhoBhmmmmmBhmmBhizakiBhiveBhitlerB
historiansB	historianBhirsiBhiringBhipsterBhinterlandsBhinduB	hindsightB	hindranceBhindiBhinderedB
hinderanceBhilmariBhillyBhillsideBhillaryBhilariouslyBhikedBhijackedBhijackBhiitBhihiBhighsBhierarchiesB	hideouslyBhideousBhideakisBhickoryBhibernatingBhiatusBhgtvBheyyBheureulsurokBheungBhesitationsBheseiBherzogBherthaBhersBherrmanBherpesBheroicBherodBherniaBhermioneBheritageBherdBherculesBherbsBherbalBheraldsB	heraldingBheraldBhepburnBhenypireBhensB	henriettaB	hendricksBhenBhemorrhoidsBhemmedB	helveticaBhelterskelterBhelmetBhelmBhelenaBhelenBheirB	heinouslyBheinousBheinekenBheimbuchB
heightenedBheightenBheidiB
heheheheheBhehBheftyBheeledBheelBheedBheeBhedgesBhedgehogBhedgeBhedBhecticBheavingBheavensBheatherBheathenBheaterBheatedBheartyB	heartsickBheartrendingBhearthBheartdesireBheartbreaksB
heartbeatsB	hearnsaysBheaneyBhealersBhealedBheadwayB	headspaceB
headmasterBheadlockBheadlessBheadlampBheaderBheadcoldBheadbandB	headachieBheaaaBhdBhbBhazzardBhazelBhayB	hawksheadBhawedBhawaiianBhawaiiBhavocBhavetBhavesBhavBhausaBhauntsB	hauntingsBhaulersBhatterBhathBhatersBhatenaBhatchetBhatchBhastingsBhassleBhaskellBhasanBharveyB
harvestingBharvestBhartB	harshnessBharshlyBharrassBharperB
harmonizesBharmlessB	harmfullyBharleyBhariBhardworkingBhardnessB	hardeningB	hardcoverB
harassmentBharassBhapticsBhapticBhappywarmworldBhapppyB
happiunessBhappiestBhappenstancesBhappendBhapinessBhansenBhansBhannahsBhannahBhangedBhanfordBhandssBhandsomefamilyBhandrailBhandfulsB	handbrakeBhandbookBhanbeonBhamperedBhamperBhammerBhaltBhallwaysBhallucinationsBhallucinateBhallsBhallmarkBhaleyBhalBhakodeshBhakaB	hairstyleBhairstyeBhairsB	hairdryerBhaiBhahahahahhaBhahahBhaggleBhaggardBhageBhaeBhacklesBhachiBhabitualBhabaneroBhaagenBgypBgwiyomiBgwenBgwBgustoBgustBguntherBgunnaBgunkBgumpBgummyBgulpedBgullibleBgulityBgulamBguitarsB	guitaristBguionBguineaBguilyBguidesB	guidebookBguffawBgudBguchaBgucciBgsBgrumpilyB	grumblingBgrumbledBgrueB
grudginglyBgrudgeBgrowledBgroupieB
groundlessB	grotesqueBgrossmanBgrosslyBgrossedBgroomsBgrobanBgroanBgrittilyBgritBgrisBgrinnedBgringaBgrinchB	grimacingBgrimacedBgrimBgriffB
grievancesB	grievanceBgreivingB	greetingsBgreeneryBgreatbritainBgreasyBgrazedBgrayishBgrayingB	graveyardBgratingB
grassrootsBgraspingBgrappledBgraphicBgraphBgrapesBgrantingBgrantBgrannyB	grandsonsBgrandioselyBgrandeurBgrandchildrenB
grandchildBgrainsBgrainBgrahamBgraciasBgracesB
gracefullyBgracedBgrabbyBgpB	gozelemesBgownsB
govrenmentBgovernBgotongBgossipBgosmanBgorgeBgoreBgopBgooseyBgooseBgoooooodBgoonsBgookBgooglerBgoofBgoodwillB	goodnightBgoodieBgoodbyesBgongBgonaBgoliathBgoldschlagerB
goldilocksBgoinBgoerB	goddamnedBgodaddyBgmcBglycemicBglumBgluedBglowyBgloveBglossedBglossBgloriesB
gloominessBgloomedBgloomBgloatingBglitteryBglitchesB
glisteningBglintBglimpsesBglimpsedBglennB	gleefullyBglcBglasbergBglaresBglareBglandsBglancedBglanceBglamourBglamB	gladiatorBgivingsB	giveawaysBgirlieBgiraffesB	ginormousBginaBgimmicksBgimmickBgimmeBgillsBgillardBgilbertBgikwangBgigglingBgiftingBgiardinaBgiBghostsBghostingBghorbaniBghettosBghdBgfsBgfbBgfathersBgetyourprettyonBgettyBgetinBgesturesB	gestatingBgervaseBgertrudeBgerrymanderedBgerryBgermsBgermanyBgermansBgerlingBgeremiafamilyBgereBgeorgieBgeorgesBgeologyB	geographyBgeographicallyB
geocentricBgenuflectingBgentsB
gentrifiedB	gentlemanBgenevaBgeneticsB	geneticesBgeneticB	generatorBgenerationalBgenerateBgeneralizingBgeneralizationBgeneralisedB	genentechBgeneliaBgenealogicalBgeneBgenBgeminiBgeezBgeesBgeeksB	geekpartyBgedBgearsBgbBgawdBgaugeBgaucheBgatsseoBgatsbyBgatoradeBgathersB
gatheringsBgatewayBgatdaBgastroBgastricBgassedBgaspBgaseumiB	garnishesBgarminB	gardenersBgardeBgarBgapsBgapeBgangingB
gandhigiriBganderBganBgamersBgameplayBgambiaB
galvanisedBgallowsBgallonBgallivantingBgalleyBgalaxyBgalaxiesBgaigeBgagaB	gabriellaB
gabapentinBfutrueBfutonBfutilityBfurthermoreBfurstenbergB
furnituresBfurBfunkBfunesB
fundraiserBfundingBfundedBfundamentallyBfundamentalistsBfundamentalB
functionalBfumesBfumbleBfulsomeBfullestB
fullbrightBfulfilBfukumuraBfuhrerBfugBfudgyBfudgeBfuckerBfuchsiaBftwB
frustratesBfrusteratedBfrumpyBfrozeBfrownedBfrownBfrostyBfrontsBfronBfromtheBfrombutBfrockBfroBfrizzB	frivolousBfrillyBfrightfullyB	frightfulBfrighteningBfriggetyB
friendfeedBfrickinBfriBfreudBfreshenBfrescaB
frequentedBfrequenciesBfrensBfrenhBfreindB	freestoneB	freelanceBfreeerBfreddyBfreakyBfreaksBfreakinBfrazzledBfrazzleBfrayedB
fraudulentBfraserB
frappucinoBfrappesBfranzBfrankBfranB	frameworkBframedBfrailtyB	frailtiesBfrailB
fragmentedBfragmentB	fracturedBfractionBfrBfpsBfowardBfourteenBfountainBfoundryBfounderBfosterBfossilBforumsB	fortnightB	formulateB	formationBformatBforkedBforgetsBforgaveBforeshadowingBforelornB
foreignersB	foreignerBforegoB	forefrontBforefootBforefingersBforecastB
forebodingBforearmBfordBforciblyB
forcefullyBforaysBforagingBfootbedB
footballerBfoodieBfondnessBfondlyBfomentB	folliclesBfolksyB
folkeskoleBfoldsBfolderBfoldBfoistBfoilsBfoilBfoiblesBfodderBfocusesBfocalorsBfoamyBfnBfmaBfluxB
flutteringBflutterBflushingBflusherBflushedBflushBflunkedBfluidlyBfluffingBfluffedBfluffBflubsBfloweredBflowedBflourishingB
flourishesBflourishBflourB	floundersBflounderingBflossingBflossBflorenceBfloralsBflopsBflooringBfloodedBfloggerBfloggedBflockedBfloatBfloBflistsB
flirtinessB	flirtiingBflingBflinchedBflightyBflickrB
flickeringBfliasBflexyBflexBfleshedBfleetBfleeBfledBflawBflavoursBflavourBflauntBflatsB	flatmatesBflatmateBflashyB
flashlightBflaringBflapsBflannelBflamingoBflamesBflakyBflakingB	flakinessBflakeBflailingBflagellatingBflaccidBflabBfixtureBfixableBfittedBfitchBfishesBfirthBfirstlyB	firsthandB	firstbornBfirsBfirmingBfireyB	fireworksBfireflyB	firefliesBfirefightersBfirearmBfinsBfinnertyBfinnBfinkeBfinishesB
fingertipsBfingernailsBfinestBfinesBfinchersBfinanceB	finalizedBfinalityB	finalistsBfinaleBfilthyBfilteredBfilterB	filmmakerBfilmicBfilmfareBfilmedBfiledBfilBfigtBfigmentB	fightstarBfightsBfighterBfiftyBfifthBfiestyBfierclyB
fiercenessB	fieldtripBfieldiBfideBfiddlyBfiddleBfiancesBffxiBffviiiBffsBfffBffaythsBfewsB
feverishlyBfeverishBfetishBfetchBfetaBfestivalBfesterBfervorBferventB	fertilityBfertileBferriesBfergieBfendBfenceBfemmeBfeminismB
femininelyBfeminineBfemininBfellsBfellingBfeistyBfeistB	feelingofBfeelinglessBfeeliBfeelbutBfeefyefoB	feedlinksBfeederB	fedtasticBfedsB	fedotenkoBfedexBfedererBfebB	feauturesBfeautureB	featuringBfeatherBfeastedBfearlessnessBfearingBfeBfavsBfavoursB
favouritesBfavourB	favoritesB	favorableBfattieBfatterBfatsBfathomedBfathomBfatehBfatallyBfataleBfastsBfastforwardingBfascitisBfascinationBfascinatingBfarthestBfarmersBfarisBfarewellBfarafinaBfantasticallyBfantabulousBfangirlsBfanfictionsB
fanfictionBfanaticsBfanaticBfamilysB
familiarlyBfamersBfamBfalunBfaitingB
faithsedgeBfaithfulnessBfairiesBfairedBfaintBfahadBfadsBfadesB	facultiesBfacsimilogosBfacilitatingB
facilitateB	faceplateBfabolousBeyreBeyoBeyesightBeyelidB	eyelashesBeyelashB
eyeglassesBeyedBeyebrowB
exuberanceB
extrovertsB	extrovertBextremlyB	extremleyB
extrememlyBextremBextrasBextraordinaryBextractBextinguishedB
externallyBexternalBexteriorB	extensiveB
extensionsBextendsBexspressB
expresswayB
expressiveB	exposuresBexposesBexportBexponentiallyB	explosiveB
explorableB
exploitingB	exploitedBexplodesBexploadBexplanationsB	expertiseB
expereinceBexpendB
expeditionBexpatriatesBexpansiveperspectiveB	expansionB	expandingBexpandBexitingBexistsBexistentBexilesBexictingBexhiliratedBexhilarationBexhilaratingBexhibitionismBexhalingB	exfoliateBexexbfBexesBexertionBexertBexemptedBexemplifiedB	executiveB	executionBexecuteBexcotickBexclaimB
exchangingB	exchangedBexcercisingB
excellenceBexcelentBexceededBexboyfriendB	examiningBexaminedBexaggerationBexaggeratedBewhichBewanBewBevolvingBevokingBevokeBevilnessB	evictionsBevictionBevgeniBeveyBeveryfuckingthingB
everybodysBeverybitterthingissweetBeverittBeverchangingB
everblightBeventuallytheBevarB	evaporateBevansBevangelicalB
evaluationB
evaluatingBevaBevBeuskcB
eurovisionBeurosBeurodancemixBeurghBeuphoricB	euphermalBeulaliasB	eucharistBeuanBetriesB	ethnicityBethnicBethicalBethanBetBestrangementBestimateBesteemedBesteBestateB	establishBessayBesqueBespressoB	espressedBespouseBespaBesilyB	escortingBeschewBescapingBeruptedBeruptBerrrrBerrorsBerrorBerraticBerrandsBerrBericaBerasBeradicationB	equipmentBequilibriumBequalsBequalityBeqafeBepithetsBepiphanyB
epiphaniesB	epilepticBepersBenvyingBenvousB
envisionedBenvisionBenvironmentsB	enviouslyBenvelopsBenuffB	entrustedBentrustBentrenchedlyB
entrenchedB	entrancedB	entitiledBentiretyB	entirellyB
enthusiastBentertainmentsBentailBensuringBensuesBensignsB	enquiriesBenoughtBennaBenmayiB	enlivenedBenlighteningBenjorlasBenjoinB
enjambmentBengrainsB
englishmanBengineerBenforcementsBenforceBenfoldB
energeticsBenergeticallyBenedBendzoneBendorsedBendorseB
endorphinsB	endorphinB	endlesslyBendgameBendeavoringBendeavorB
encouragesB
encountersBencompassingBencodingBenclosedBencloseB
enchantingB	enchantedBencapsulateBenactingBenablingBenablesBenabledBenableBemtynessBemptiesBempowermentBempowerB
employmentBemployerBemployedBemployB	emphasiseBemphasisB	empathticBempathizingB
emotionalyBemoteBemoexaderisticBemmB
emilyhurshBemillionstarsBemergesB	emergencyBemergenciesB	emergenceBemergedBembossedB
embitteredBembersBemberB	embeddingBembeddedBembarkedB
embaressedBembarassingB	embalmingBelviveB	elusivelyBeludedBeloquentB	eloquenceB
ellipticalBelleB	elizabethBelitistB
eliminatedBelihuBelicitsBelicitBeliBelfBelevenB	elevationBelevateBeleganceBelectrocutedBelectrifiedBelectingBeldersBelbowsBelasticBelashisBelaineB	elaborateBelBeintragBeightyBeightiesBeighthBeighteenBehhBehbBeharmonyBegyptBegfBeganBegBeffortlesslyB
effortlessBefficientlyB	efficientB
efficiencyBefficacyB
effeminacyBeffedB	effectualBeffectivenessBeffacingBefeelingBeerilyBeepctqlhiafjwnrrmasBedwardB	educatorsB
educationgBedmontoniansBedmontonBeditsBeditorsBeditionBedithsB	edinburghB	ediebloomBedibleBeddieBecstasyBeconomicallyBecologyBeclipseBeckerBechoingBechoesBechoedBeccentricitiesBecBebooksBebookBebloggyBebbBebayedBeatsBeatersBeateriesBeaterB	easygoingBeasternBeasiBeaselBearthlyBearthaBearshotB
earreadingBearplugsBearnestnessBearnestBearleyBearleBearlBeagleandhammerBeagerlyB	eachotherBeaaaatB	dysphoriaBdylanBdykeyBdykesBdyeBdyaBdwindleBdwelledBdvredBdvdsBduvetBdustbinBduskBdursleyBdurdenBduplexBdupedBduoB	dunstableBdunoBdunnnoBdunhamBdungB	dumplingsBdumpeeBdumbfoundedBdumberBdumbassBduluthBdullnessBdullesBduhBduetBdudleyBductBducksBducklingBduckieBdubyaBdubstepBdubiedBdubbedBdualBdtBdspBdslBdryingB	drunkenlyBdrunkenBdrumBdruianBdruggedBdrsBdrowsyBdrovesB	droppingsBdrivewayBdrivelBdripsBdripBdrinkyBdrillBdriftingthroughlifeBdrierBdresserBdreckyBdrearyB
dreamworldB	dreamlandBdreamilyBdrapeBdrambuieBdrainageBdragsBdraftsBdraftingBdraftedBdraftblogerBdptBdpsBdpnsBdozensB	downwardsB	downvotedBdowntimeB	downtempoB
downstreamBdownersBdoveyBdovetailBdousedBdoughBdouevenliftBdoucherBdoubtedBdoublingBdoublesBdottingBdosageBdosBdormireBdorksBdorkBdoramaBdoraemonBdopeyBdoorwayBdoorstepBdoorknobB
doomnationBdoodlyBdoodlesandscrapsofmeBdoodlesBdonutsBdonttBdontknowBdonsBdonorBdonningB	donationsBdonationBdonaldB
dominatingBdominateBdomesticallyBdomesticBdomBdolphinsBdollarBdojoB	doingaoneBdohaBdoesnBdoerB	doedollilBdodgyBdodgingBdoddB	documentsB	documentiBdocumentariesB	doctorateBdocratBdocileBdntBdlptBdlkBdkangBdiwaliBdivorceeBdivinityBdivingBdividedBdivertBdiversionaryBdiversifiedBdivasBdittmarB	ditlevsenBdistrustfulBdistrustB	districtsB
distortionB	distortedBdistinguishedBdistillBdistasteB	distancesB
dissipatedB	dissipateB
dissectingB	dissectedBdissectBdissatisfactionsBdissassociatedB
dissappearBdissapearedBdissB
disruptiveB
disruptionB	disruptedBdisrespectfulB
disregardsBdisquietBdisqualificationsBdisputeBdispositionsB
disposableBdispleasingBdisplaysBdisplacementB	displacedB
dispiritedB	dispersedB
dispairingB
disorientsBdisorientatingBdisorganisedB
dismissingB	dismissesBdismaysB	dismantleBdislikesB
disjointedBdisinfectedB
dishwasherBdishonoringB
disharmonyBdisgustingnessBdisgustinglyBdisgustBdisguiseBdisgraceB
disgestiveB
disengagedBdiseasesB
disdainfulBdiscriminatedB
discreetlyBdiscouragingBdiscouragesB	discountsBdiscountingBdiscontinuedBdiscontentedBdisconsolateBdisconnectsB
disconnectBdiscomfortingBdiscombobulatedBdiscoB
disclosureBdiscipleB
dischargedBdiscernmentB
discardingBdiscB	disbeliefB
disbandingB
disastrousB
disasteredBdisapprovementsB
disapproveBdisappointmentsBdisappointingBdisallusionedBdisagreeableBdisBdirespectedB	directorsBdirectionlessBdirectedBdireBdirBdipshitBdippedBdiplomaBdinosaurBdinnersBdinnBdinksBdinglerBdinetteBdineshBdinersBdinBdimpleBdiminishingBdimensionalBdimBdiluteB
diligentlyBdildoBdiktatsBdigustBdigressBdiggB	digestingBdifferBdiesBdiegoBdidintB
dictionaryBdictatedBdickishB	dickinsonB
dickensianBdickensB	dichotomyBdiazepamBdiatribeB	diarrhoeaBdiarrheaBdianneBdianeBdianamBdialsBdialedBdialBdiagramBdiagonalBdiagnosticianB	diagnosedBdiagnoseBdiabyB	diabeticsBdhawanBdharmaBdharaviBdezinesamazeBdewittBdewiBdevoutBdevouredB	devotionsBdevotionBdevotingBdevisedBdevinBdeviceB
devestatedBdevelopmentsB
developersB	developerBdevastationBdevaluedBdetroitBdetrimentalB
detractionB	detractedBdetoxingB
detoxifiedBdetouredBdetestBdeterioratedBdeteriorateB	detergentB	detentionBdetectorBdetectinB	detatchedB	detailingBdetailedB
detachedlyBdetachedBdestructionB	destroyerB	destiniesBdestinationB
destashingBdessertsBdessenBdespB
desolationBdesolateBdesktopB
desendantsBdescriptiveBdescendBdescaraBderpBderidedBderfwadmanorBderekB
derbyshireBdepriveBdeprivationB
depressiveBdepressionsB	depressesBdepressantsBdeprecationB	depravityBdepoisBdeployedBdepictB
dependencyB
dependenceBdepartmentsBdepartBdeoBdentistsBdenselyBdenseB	denningssBdenmarkBdenisBdenimBdenaliBdenB
demotivateBdemostratorsBdemosBdemoralizedBdemonstrationsBdemonstrationBdemonBdemographicBdemiseBdemeanorBdelveBdeluxeB	delusionsBdelusionB
deliveringB
deliveriesB
delilahlwlBdelightsBdelicousBdeliberationsBdeliberationB
deliberateBdelhiBdelaysBdelayedBdelayBdekeBdeityBdeisireBdegrassiB
defriendedBdeformedBdeformBdeflatedBdefinitenessBdefiningBdefinedB
definationBdefiledBdefiantBdeffinatelyB	deferringBdeferentialBdefensesB
defensemanBdefenseBdefendedBdefenceBdefectB	defeatingBdeepensBdeenBdeedeeBdeedBdeduceB	dedicatesBdedicateBdecribeB
decreasingBdecreaseB
decoratingB	decoratedBdeconstructionistB
decompressBdecodeBdeclutteringBdecksBdeciteBdecidesBdeceptivelyB	deceptionBdeceivesBdeceiveBdeceasedBdecalBdecafBdebutBdebtsBdebrisBdebraBdeborahBdebatesBdebatedBdebacleB	dearwendyBdearestBdealerBdeadpanBdeadlyB	deadlinesBdeaderBdeactivateingBdcBdazzlingBdazzledBdazzleBdazsBdayummmBdaytimeBdaydreamingB
daydreamedBdawningBdavisB	davidsonsBdavenBdauntedBdatsBdateyBdatedB	databasesBdatBdasiBdashesBdashedB	dashboardBdartBdarrenBdarnedBdarlingsBdarklyBdarkerBdaringBdaraBdaoBdannyBdannikaBdankBdanielleBdangledBdangleBdangersBdangBdancinBdancesB
dancefloorBdancedBdamsBdamperB	dampeningBdampBdamonB	damnationBdallilBdaleyBdaleBdalaiBdakotaBdaisyBdaisiesBdailiesBdaikiBdahBdaggersBdaddysBdabbleBczechBcystBcyprusBcypressB
cyclindersBcycledB
cyberspaceBcyaBcxBcuttingsBcutterBcutieBcutesyBcustomsB
customizedBcussBcushyBcushionsB
curveballsBcurtainBcurryBcurrencyBcurlyBcurlsBcurlerBcurfewBcuratedBcupsBcupcakesBcuntBcummingB
cumbersomeB
cumberlandB
culturallyBcultBculminationBculinaryBcuffsB	cufflinksBcuesBcudntBcuddlesBcuddledBcucumberBcuBcryinBcrustB
crushinglyBcrushesBcrunkBcrunchyB	crunchingBcrumblesBcruisingBcrueltyBcrudelyB	crucifiedBcrucialBcruBcrownBcrowedBcroweBcrowdsB
crosswordsBcrosshatchingBcropBcroneBcrolBcrocsBcrockB	croatiansBcriticsBcriticizingB
criticismsB	criticismB
criticallyBcrispsBcrispBcrisesBcrimsonB	criminalsBcrimB	cricnepalBcretinsBcrestedB	crescentsBcreepsBcreepingBcreepilyBcreepedBcreekBcredentialsB
credentialBcredB	creaturesBcreatorBcreativeliarBcreativecommonsBcreatesBcreamyBcraziestBcrawledBcravedBcrashesBcrapsBcrannyB	cranberryBcrampedBcrakeBcraisinsBcraftsB	craftisanBcraftedBcrackingBcrackersBcrackerBcrackedBcrabsBcrabBcraaaaaaackBcpineBcoxBcowsBcowboyBcowardlyBcowardB
covingtonsBcovetousnesBcoverageBcousinsBcourtsBcourthousesBcoursingBcoursesBcouponBcountrysideBcountertopsBcounterproductiveB
counteringB
counsellorB
councilmanBcouncillorsBcouncilBcoulterBcottonBcottageBcostumesBcosplayBcosmosBcosmopolitianB
cosmicallyBcosmeticBcorysBcorsetB
corruptingB
correspondBcorrectnessB
correctionB	correctedBcorporationsB
coronationBcornwallBcornishBcoreyBcordialBcordeliaBcoraB	copyrightBcopyingBcopycatBcoppingBcoppersBcopperBcopiousBcopiedBcopedBcopayBcoordinatesB
coordinateBcooperativeBcooperBcoolumBcoolsBcoolnessBcooledBcooBconvoyBconvosBconvoB
convincingB	convictedBconveyedB
convertingB
conversingBconversationalBcontroversyBcontrolsBcontributesBcontradictsBcontradictoryBcontradictingBcontractualB	contractsBcontractionBcontortB
continuityB	continuerBcontinentalB	continentB	contestedBcontentsB
contentionBcontentedlyBcontendBcontemptBcontemplationBcontemplatedBcontaminationBcontaminateB
containingBcontactsB
contactingB	contactedBconsumesBconsultsB	consultedBconsultantsB
consultantB	consulateB	construesBconstructivelyBconstructionsBconstructedBconstraintsBconstitutionalB
constituteB
conspiringBconsolidationBconsolidateBconsoledBconsistsBconsignmentBconsiderablyBconservatoryBconservatishBconsequentlyBconsentBconsecratedBconscriptedBconscientiousB	conquerorB
conqueringB	conquererBconquerBconorBconnivedBconnedBconnecticutBconiferBcongregationsBcongregationBcongregatedBcongratulationBcongratulateB	congenialBconfrontationalBconfrontB
conformityB
conformingB
confirmingBconfirmationBconfinesBconfinementBconfidentialBconfideBconfessionsB
confessingB	confessedB	conectionB
conductingBconductB	condoningBcondoneBconditionerB	condimentB
condescendBcondemnBconcurrentlyBconcreteBconclusionsBconcludeBconciseBconcieveB
concidenceBconcertsBconcequencesBconceptualizedBconcentrationB
conceivingB	conceivedB	concealerBcomusBcomradeshipBcompunctionB
compulsoryBcompromisingBcomprimisedBcompressBcomprehensiveB	compoundsB
compoundedB
componentsB	componentBcomplimentaryBcomplicationsBcomplicatingB	compliantBcomplexitiesB	completlyB
completleyBcompletenessB
complementBcompiledBcompileB	competentBcompereBcompensatedBcompellinglyB
compatibleBcompasionateBcompartmentalisedBcomparisonsBcompanionshipB	compagnonB	commutersBcommuterBcommutedB	communingBcommunicatorBcommunicationsBcommunicatesB
communicatBcommonsBcommonplaceB	commodoreBcommittmentB
committingB	committeeBcommissionsBcommiesBcommercialismBcommandmentsBcommandmentBcomicsBcomforB	comfidentBcometBcomersBcomediesBcomedicBcomedianBcombosBcombingBcombinationsBcomatoseBcomaBcolumbusBcolumbiaB	colouringBcoloringBcolorfulBcoloradoBcolomnB
colombiansBcolognesBcollinBcollieBcollideB	collectorBcollectionsBcollectB	colleagueB
collapsingB	collapsesBcollapesingBcollaborativeBcolinBcolicB	coldstoneB	coldsoresB	coldplaysBcolbertBcolaBcoinsBcoinfectionsBcoincidenceBcoinBcoiledBcohortBcohesiveBcoherentBcohensBcohenBcoheedBcognizeBcogentlyBcogBcoeurBcoerciveBcoerceBcoelhoBcocoaBcocktailBcocaineBcocaBcobwebsBcoaxedBcoastedBcnnBcnBcmBclutterBclutchedBclusterB
clumsinessBclumpsBcluelessBclubbingBclubbedB	clozapineBclownBcloverBclotsBcloggedBclogBcloestBclodiaBclockingBclitBcliqueyBcliquesBclipsBclintBcliniqueBclingBclimaxedBclichedBclichBcleverlyBcleveredBclermontBclenchBcleatBclearyBclearedBcleansesB	cleansersBcleanerBclawedBclausB	classmateBclasheenBclashBclarkeBclarinetBclaraBclanBclamsBclamoursB
clamouringB	clamoringBclammyBclaireeBclaireBclaimedBcivillyBcivilizationB	civiliansBcivilianBcitedBcircuitsBcinnamonB	cineworldBcineplexB	cinematicBcindyB
cinderallaB
cincinnatiBcigBciaranBchurnsBchurnBchurchyBchurchoffuckBchunkyBchukeyBchuggedBchuckleBchubbyBchubBchromosomesBchristmastimeBchristchurchBchrissBchoresBchopsBchoppedBcholesterolBchocolatingBchoccyBchocBchlorineBchivalryBchivalrouslyBchiuvBchipsBchippingBchipmunkBchinsBchinksBchingB
chinesepodB	chinatownBchinasBchinBchimesBchillsBchillingBchilledBchillaxB	childlikeB
childishlyB
childbirthBchiharuBchiefsBchickieBchicB	chiangmaiBchexBchewieBchewBchesleyB
cherishingBchendolBchemotherapyBchemistB
chelmsfordBchefsBcheesyB
cheesecakeBcheerleaderB
cheerfullyB	cheerfullBcheekBcheckupB
checklistsB	checklistBchechensBcheatBcheaplyBchattedB	chastisedBchasteBchasmBchartsBchartBcharredBcharliesB
charitableBchargesBcharadeBcharacteristicsBcharacteristicBcharacterisationBcharB	chaperoneB	chapbooksBchantingB	channeledBchangerB
changelingBchampionshipB
championedBchalkingBchalkBchaliceBchakotayBchajeulB	chainringB	chadstoneBchabadBchaBcgiBceteraBcesspoolBcertificateBcertifiablyBcertBceramicsBcentresBcentB
censorshipBcensoredBcenaBcempakaBcelticsB	celluliteBcellularBcellsB	cellphoneBcelloBcelexaBceleenBcelebritiesB
celebratesBcedeBceaseBccwBcbsBcbcBcawingBcavityBcavemanBcavatinaBcavalierBcautionBcausticB	caulfieldBcatsaBcathyB	catholicsBcathingBcatheterB	cathedralB	catharticBcathBcaterpillarsB
categoriesB	categorieBcatchyB
catapultedBcatalystBcatalogsBcataclysmicBcastielBcasteB	castanetsB	casseroleBcassavaBcasingBcashmereBcascadesB
casablancaB	cartwheelB
cartoonishBcarteBcartBcarsonBcarseatBcarryoutBcarrryBcarrotBcarrollBcarriesBcarpingBcarpetBcarolinaBcarolB
carnivoresBcarniolaBcarnageBcarlasBcarlBcarinBcaricaturesB	caribbeanBcareyB
caretakersB	caretakerBcaressedBcaresseBcarelessnessB	caregiverBcareessBcareenedB	careeeeeeBcardiovascularBcardiffBcarcenogenicBcarcassBcarbyBcarbsBcarbohydratesBcarbBcarapaceBcaramelB	captivityBcaptionsBcaptionBcapsBcappBcapitolBcapeB
capabilityBcapabilitiesBcanvasesBcantinaBcanteenBcantankerousBcansBcanonBcanoesBcanoeBcanningB	candylandBcandiesB
candidatesB	candidateB	cancelledBcanagliaB	canadiansBcanadasBcamwhoreBcampingBcamperBcammieBcamillaBcamerasBcambriaBcambodiaBcalvinB
calvaryccvBcalorieBcalmnessBcallousBcalliBcallersBcalleBcaliforniansBcalgaryBcalfB	caledoniaBcalBcakesBcajoledBcageyBcagedB	caffeinedBcaffeinatedB	cafeteriaBcafBcadoreBcacheBcabernetBcabealBcabbageBbyteBbyronBbyesBbuzzyBbuzzingBbuzzBbuyersBbuuuuuutBbuttttB
buttermilkBbutiBbutcheryB
butcheringBbustBbusierBbushBburyingBburstsB	burrowingBburrowedBburpBburnoutB
burmeisterB	burlesqueBburkieBburgosB
burgeoningBbureaucratsBbureaucraciesBburdensBburbankBbuoyedBbuoiedBbunsB	bunnysuitBbunkingBbunkBbunionBbunglingBbungalowBbundlesBbunchesBbunBbumperBbumminBbumbedBbullyingBbulliedBbulletinBbullBbulB	buildingsBbuffyBbuffsBbuffedBbuffaloBbuffB	budgetaryBbuddysBbuddingBbuckingBbucketsBbucketBbuckBbubblyBbubblesBbuBbtBbryangregorylewisBbrushesB	brunswickBbrunoBbrunchBbruisingBbruisesBbruisedBbrowsersBbrowseBbrownishBbrownessBbrowBbroomsB
broomfieldBbroomBbrooksBbrooklynBbroodingB
broodinessBbroochBbronzeBbrokeupBbroadsBbroadlyB
broadeningBbroadenBbroadcastingBbroadBbroB	brittneysBbritonBbritneysBbritneyBbrisbanehubB
brillianceB	brightensBbrigBbriefsBbrieflyBbridgewaterBbridgetBbridezillasBbrideBbridalBbrickBbriarBbrianBbrewerBbrendonBbreezingBbreedersB
breathlessBbreatherBbreathedBbreakthroughB
breakdownsBbrdsBbrdB	brazilianBbrazenBbravelyBbravedBbrassedBbrandyBbrandoBbrandishBbrandingBbranchesBbranchBbrainwashingBbrainstormingBbrainsB	brainlessBbraidedBbrahmavamsoBbraggingBbragBbraedenBbradburyBbrachB	braceletsBbraBbqffB	boyfirendBboxersBbowsBbowlsBbowlingBbowlerBbowledBbowieBbowelsBbowelBbourbonBbouquetBboundaryBbouncierBbouncesBbouncerBboulderBboughsBboudoirBbottlingB
bothersomeBbotanyB	botanicalBbossesBbosomBboschBborrowedBboredwithquinnBboppingBboostedBboomersB	bookwormsB
bookstoresB	bookstoreBbookingBbontocBbonkaBbonkBbonhamBbondmusingsBbonaBbonBbommieBbombsiteBbombsBbombersBbombardmentB	bombardedBboltsBboltB	bollywoodBboilingBbogartBboehnerBboeB	bodyworksBbodysBbodypumpB	bodyguardBbodsBbodilyBbodegaBbobsBboboBbobbyBbobbingBbobbinBboatsBboastingBboastB	boardwalkBboardedBbmBblushesBblurtingBblurtBblurryBblurringBblurredBbluntB
blunderingBblunderB	bluetoothBbluestarlightB	blueberryBbludgeonB
blubberingBbluBblowoutsBblowoutBblowjobBblouseBblossomsB
blossomingBblossomBbloomingBbloomersBbloomB	bloodshedBbloodsBblokeBblogstalkersBblogspotBblogpostBblogoversaryBbloglandBblogingBblocBbloaterBbloatBblisterBblissfulBblissedBblipBblinkedBblindsBblewBbleurghBbleuBblendingBblenderBblendBblehBbleedsBbleakBbleacherreportBbleachedBblazesBblazerB	blatantlyBblatantBblastBblaresBblanksBblankedBblancheBblairBblahnessBbladesBbladdersB
blackwaterBblackmailedB	blackenedB
blabberingBblabberBbizBbittersweetBbittBbitsyB	bitstreamBbitesBbitchingBbitchedBbishanBbiscuitsBbiscuitB	birthmomsBbirthedBbirdingBbiowareBbiostatisticsBbiopsiesB
biomedicalB
biologicalBbiochemistryBbiochemBbingingBbingesBbindsBbindBbillionB	billiardsBbikiniBbikingBbikesBbigotryBbiggedBbiffBbidsBbidiBbicycleBbicepsBbibliographyBbiblicalBbiasaBbiasBbiannualBbhubaneswarBbgrBbgBbfsBbffBbfdBbezosBbeyoncB	bewertungBbewareBbeverageBbettysBbetsBbetrayBbethBbestsellingBbestialB
bestfriendBbertukarBbertramBberriesBbernieBberndBbernardsBberkBbereftBberateBbeoryeoBbenzemaBbensonBbennyBbennoB	benefitedB	beneficesBbenedictineBbenciBbenchesBbenchedBbenchBbenadrylBbemusedBbelugaBbeltsBbeltBbelongingnessBbelmontBbellsBbellmenB
bellinghamBbelleBbelittleBbelievBbelatedBbelBbeinB	beholdingBbeholderBbehavesB	begleiterB	befuddledB
beforehandBbefoeBbefcBbefallBbeetBbeesBbeersBbeeeeeeeeeeeingBbedsideBbedsB	bedriacumBbecuaseBbecsuseBbecozBbeckonB	beaubronzBbeatyBbeatlesBbeastsBbearedBbeanbagBbeamingBbeakBbeagleBbeadsBbeacuseBbeachesB	beachbodyBbcozBbbwBbbmBbbcBbbBbayouBbauerBbattledBbattingB	batteringBbatteredBbatterB	battalionBbatonBbathsBbathedB
batchmatesBbastardsBbassanioBbassBbasketsB
basketballBbaskBbasherBbasementB	bartenderBbarryBbarrelBbaroqueB
barometricBbarnsBbarnogBbarnesBbarkingBbarkerBbaristaBbaringBbargainBbarfedBbaremineralsBbarefootBbardBbarcombBbarcialBbarbiesBbarbequeBbarbecueBbaptismBbanjoBbanishesBbanishedBbangsBbangingBbangedB	bandwagonBbandhuBbandaidBbanalBbanBbalticBbalsamicBbalmyBballoonsBbalksBbalBbakedBbaileysBbailedBbaiBbahtBbaganBbaffroomBbadplaydateB	badmintonBbadmanBbadgerBbacuseBbaconB	backstageBbackstabberB	backpacksB
backpackerBbackpackBbacklogsBbackgroundsB	backfiresBbackdropB	backachesB	bachelorsBbacheloretteBbabysittingB
babysitterBbabysatBbabydollB
babychaserBbabsbrisbaneBbabesBbabeBbabbleBbaachanBbaBazulBazealeaBayumiBayanBaxillaBaxelBaxBawwBawokeB	awkwardlyB
awesomnessBawesomenessBawaysBawashBawaitsBawaitedBawaitBavtaarBavrilBavonB	avoidanceB	avoidableBaveryBaversaryBavenueBavastBavantB	avalancheBautonomyB
automationBautocorrectBautobiographyB	autisticsBautisticBautismBauthenticityBaustereBausterBaussyBauntyBauntsBaugustBauggieBaudreyBaudreB
audiobooksBaudioBaudieBaudacityBauctionBaubreyB
attributesB
attributedB	attorneysBatticusBatticsB
attentionsB	attainingB
attainableB	attackingBattachB	atrophiesB	atrociousBatoshealthcareBatopBatomicBatmosphericBatleticoB
atlephobiaBatlanticBativanBatiqahB	athleticsBathleticismBathleteBathfBatheistsBatheBathBatentionBatellBatelierBatariBataBasylumBastrayBasthmaB	assuranceBassuageBassistatB
assistantsBassimilatedB
assignmentBassholesBassessorBassessmentsBassessedBassessBassesB	assertiveB	assertionB	assertingBassertedB
assembliesBassembleBassaultsB
assaultingBassaultBassassinatedB	aspienessBaspiBasmaBashtrayBashtonBashrafBashlotteBashleyBashesBashersBashBasdBasciaticB	ascensionBasbestosBasasoulawakensBasamiBaryansBarvoBarunBarughBartyBartisanBartificiallyB
artificialBartificallyBarticulatingB
articulacyB	artefactsBarsenalBarseBarsBarrowBarrogantB	arroganceBarrivalsBarrisesBarrayB
arrangmentBarrangementsBarrangementBarrangeBarousingBaroseBaromaBarmpitsB	armisticeBarmedBarmaniBarlovskiBaristBarielB	arialblueBariBarguingBarguablyBardmoreBarchitecturallyBarchitecturalB
architectsBarcheologicalBarchedBarchdioceseBarcBarabiaBarabBapraxiaBapptsBapproximatelyBapproximateBapproxBapproveB
approachesB
approachedBapprisedBappriciationBappreciatesBapplesB	applebeesB
applaincesBappeasedBappeaseB	appearancBappealsBappB
apologeticBapocalypsesB	apgujeongB	apendagesBapcBapayaBapawaBaoutBaoshiBaolBaoiBaoaBanymmoreBanyhowB	anxietiesBantsBantoniosBantonioB
antoinetteBantmB	antivirusBantiquitiesBantiqueB	antipastiBantidoteBantidepressantsB	anthologyBanthemB
antagonismBansiBanotehrB	anonymousB	anonymityBanonBanoB	annulmentBannulledBannualsB
announcingBannouncementsB
annotationBannBankletsBanklesBanipikeB	animosityBanimeshB	animatorsBanimatedBanimateBanhaBanglesBangledBangelicBangeeBanesthetizedBandyBandthenwearBandriBandrewBandreasBandintrupteBandersonBandareBandangryBancientsB	anchorageBanansiBanalyzeB	analysingBanalysesBanalyseBanalBanaestheticBanB	amusementBamudBampleBampedBampatuanBamparoB	amountingBamosB	amorphousBammanBammaBamkrisBamitsBamissBamishaBamidB	americanaB	amenitiesBamdBambushedB
ambulatoryB	amblesideBambientBambienceBamberB
ambassadorBamazonBamazingnessB	amazementBamalgamationBalwayBalvaB
alumniniumBaluminumBaltonB	altitudesBalternativesB
alternatedBalteredBalterationsB
alterationBalswaysBalphabetBalottaBaloofBalongerBaloftBallyBallusionBallthingsbucksBallsB
allowancesB	allowableBalllBalliesBallianceBalliBalleysBalleyBallergicBallergenBallenB
allegationBaliseBaligncenterBalightBaliensBalibiBalhamdulillahBalgorithmicBalfredBalfieBalexisB	alexanderBalexaB	alertnessBaleneBalecB
alcoholismBalcestBalbuquerqueBalbaBalarmingBalanBalabamaBalaBakwardBakshayBakronBajmedBajahnBajBaiwBairtimeB
airritatedBairportsBairplaneBairlineB
aircleanerBairbusBairbrushingBaimsBaimlessBaimedBaiiiiighhhhtBaidsBaidedBahkmanBahhhB	ahahahahaBagtalkBagreeingB	agonisingBagonisedB	agnosticsBagnBagingBagilityB	agiatatedB
aggressionBaggravatingBaggrandisementBagendaBaftereffectsBafricansBafradeBafradBafpBafghanB
affordableBaffirmativeBaffirmationsBaffirmBaffendB
affectionsBaffectionatelyB	affeccionBafarBafaerytaleinmakebelieveBafB	aestheticB
advocatingB	advocatesBadvocacyBadvilBadvertsBadvertorialB
advertisesBadvertisementsBadvertisementB
advertisedB	adverselyB	adversaryBadventBadvancementBadsenseBadsBadriftBadrianBadressB
adrasteiusBadoresBadoredB	adorationBadolescenceBadnB
admittanceBadmitsB
admissionsBadmiresBadministratorsBadministratorBadminBadjustmentsB	adjustingB	adjoiningB	adherenceBadhereBadfBadequateBadeB	addressedBaddledBadditionallyBaddisonsBaddisonB	addictiveBadaptionBadaptedBadamsBacumenBacuityB	actressesBactressBactivismBactivationsBactaulyBacronymBacquireBacquaintB
aconfidentBacknowledgmentBacknowledgementBackerBacimBacidB
acheivmentBaceBaccusingBaccuserBaccusedB
accusationBaccumulationBaccumulatedB
accumulateB	acctuallyBaccrueBaccountsB
accordanceBaccordBaccompanimentBaccommodationBaccoB
acclimatedB	accidentsB
accessibleBaccessibilityBaccessariesBacceptsBacceptancesBaccentuatingBacceleratedBacauseBacademyBacBabusingBabusesB
abundantlyB	abundanceBabtB	absurdityB
abstinenceBabstainB
absorptionBabsorbedB	absolutlyBabsoloutelyBabruptlyBabrahamBaboveBaboundBabortionB
abominableBaboardB
abnormallyBabloBablenessB	abhorrentBabelardBabductedB	abdominalBabbigailBabbaBabatedBabBaaronBaahhhBaacBaaaandBaaaahBaaaaandB	aaaaaaand
̫
Const_5Const*
_output_shapes

:??*
dtype0	*??
value??B??	??"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      ??      @?      A?      B?      C?      D?      E?      F?      G?      H?      I?      J?      K?      L?      M?      N?      O?      P?      Q?      R?      S?      T?      U?      V?      W?      X?      Y?      Z?      [?      \?      ]?      ^?      _?      `?      a?      b?      c?      d?      e?      f?      g?      h?      i?      j?      k?      l?      m?      n?      o?      p?      q?      r?      s?      t?      u?      v?      w?      x?      y?      z?      {?      |?      }?      ~?      ?      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??       @      @      @      @      @      @      @      @      @      	@      
@      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      !@      "@      #@      $@      %@      &@      '@      (@      )@      *@      +@      ,@      -@      .@      /@      0@      1@      2@      3@      4@      5@      6@      7@      8@      9@      :@      ;@      <@      =@      >@      ?@      @@      A@      B@      C@      D@      E@      F@      G@      H@      I@      J@      K@      L@      M@      N@      O@      P@      Q@      R@      S@      T@      U@      V@      W@      X@      Y@      Z@      [@      \@      ]@      ^@      _@      `@      a@      b@      c@      d@      e@      f@      g@      h@      i@      j@      k@      l@      m@      n@      o@      p@      q@      r@      s@      t@      u@      v@      w@      x@      y@      z@      {@      |@      }@      ~@      @      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@       A      A      A      A      A      A      A      A      A      	A      
A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A       A      !A      "A      #A      $A      %A      &A      'A      (A      )A      *A      +A      ,A      -A      .A      /A      0A      1A      2A      3A      4A      5A      6A      7A      8A      9A      :A      ;A      <A      =A      >A      ?A      @A      AA      BA      CA      DA      EA      FA      GA      HA      IA      JA      KA      LA      MA      NA      OA      PA      QA      RA      SA      TA      UA      VA      WA      XA      YA      ZA      [A      \A      ]A      ^A      _A      `A      aA      bA      cA      dA      eA      fA      gA      hA      iA      jA      kA      lA      mA      nA      oA      pA      qA      rA      sA      tA      uA      vA      wA      xA      yA      zA      {A      |A      }A      ~A      A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A       B      B      B      B      B      B      B      B      B      	B      
B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B       B      !B      "B      #B      $B      %B      &B      'B      (B      )B      *B      +B      ,B      -B      .B      /B      0B      1B      2B      3B      4B      5B      6B      7B      8B      9B      :B      ;B      <B      =B      >B      ?B      @B      AB      BB      CB      DB      EB      FB      GB      HB      IB      JB      KB      LB      MB      NB      OB      PB      QB      RB      SB      TB      UB      VB      WB      XB      YB      ZB      [B      \B      ]B      ^B      _B      `B      aB      bB      cB      dB      eB      fB      gB      hB      iB      jB      kB      lB      mB      nB      oB      pB      qB      rB      sB      tB      uB      vB      wB      xB      yB      zB      {B      |B      }B      ~B      B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50691
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50696
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?S
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?R
value?RB?R B?R
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
;
	keras_api
_lookup_layer
_adapt_function*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
?
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op*
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
?
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
?
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator* 
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias*
C
1
#2
$3
24
35
A6
B7
P8
Q9*
C
0
#1
$2
23
34
A5
B6
P7
Q8*
* 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3* 
6
[trace_0
\trace_1
]trace_2
^trace_3* 
* 
?
_iter

`beta_1

abeta_2
	bdecay
clearning_ratem?#m?$m?2m?3m?Am?Bm?Pm?Qm?v?#v?$v?2v?3v?Av?Bv?Pv?Qv?*

dserving_default* 
* 
7
e	keras_api
flookup_table
gtoken_counts*

htrace_0* 

0*

0*
* 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
nh
VARIABLE_VALUEembedding_layer/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

|trace_0* 

}trace_0* 

20
31*

20
31*
* 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

A0
B1*

A0
B1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

P0
Q1*

P0
Q1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource><layer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUE!Adam/embedding_layer/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/embedding_layer/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
(serving_default_text_vectorization_inputPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall(serving_default_text_vectorization_input
hash_tableConstConst_1Const_2embedding_layer/embeddingsconv1d/kernelconv1d/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense/kernel
dense/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_49823
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename.embedding_layer/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp5Adam/embedding_layer/embeddings/m/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp5Adam/embedding_layer/embeddings/v/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_6*3
Tin,
*2(		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_50865
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding_layer/embeddingsconv1d/kernelconv1d/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotal_1count_1totalcount!Adam/embedding_layer/embeddings/mAdam/conv1d/kernel/mAdam/conv1d/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/mAdam/dense/bias/m!Adam/embedding_layer/embeddings/vAdam/conv1d/kernel/vAdam/conv1d/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense/kernel/vAdam/dense/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_50986?? 
?	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_50603

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_50557

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_50566

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_48739o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_48699

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@ ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????= *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????= *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????= T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????= e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????= ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????@ 
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_50545

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_48750

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__initializer_506367
3key_value_init1572_lookuptableimportv2_table_handle/
+key_value_init1572_lookuptableimportv2_keys1
-key_value_init1572_lookuptableimportv2_values	
identity??&key_value_init1572/LookupTableImportV2?
&key_value_init1572/LookupTableImportV2LookupTableImportV23key_value_init1572_lookuptableimportv2_table_handle+key_value_init1572_lookuptableimportv2_keys-key_value_init1572_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1572/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init1572/LookupTableImportV2&key_value_init1572/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
ӷ
?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49192

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	)
embedding_layer_49165:
?? "
conv1d_49168:  
conv1d_49170: 
dense_1_49174: 
dense_1_49176:
dense_2_49180:
dense_2_49182:
dense_49186:
dense_49188:
identity??conv1d/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_layer_49165*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679?
conv1d/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0conv1d_49168conv1d_49170*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_48699?
(global_average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424?
dense_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_1_49174dense_1_49176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_48716?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48862?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_49180dense_2_49182*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_48739?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48829?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_49186dense_49188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_48763u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49784
text_vectorization_inputU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	)
embedding_layer_49757:
?? "
conv1d_49760:  
conv1d_49762: 
dense_1_49766: 
dense_1_49768:
dense_2_49772:
dense_2_49774:
dense_49778:
dense_49780:
identity??conv1d/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_layer_49757*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679?
conv1d/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0conv1d_49760conv1d_49762*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_48699?
(global_average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424?
dense_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_1_49766dense_1_49768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_48716?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48862?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_49772dense_2_49774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_48739?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48829?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_49778dense_49780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_48763u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49518
text_vectorization_inputU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	)
embedding_layer_49491:
?? "
conv1d_49494:  
conv1d_49496: 
dense_1_49500: 
dense_1_49502:
dense_2_49506:
dense_2_49508:
dense_49512:
dense_49514:
identity??conv1d/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_layer_49491*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679?
conv1d/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0conv1d_49494conv1d_49496*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_48699?
(global_average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424?
dense_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_1_49500dense_1_49502*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_48716?
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48727?
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_49506dense_2_49508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_48739?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48750?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_49512dense_49514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_48763u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_embedding_layer_layer_call_fn_50466

inputs	
unknown:
?? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?

U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50459

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	:
&embedding_layer_embedding_lookup_50404:
?? H
2conv1d_conv1d_expanddims_1_readvariableop_resource:  4
&conv1d_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp? embedding_layer/embedding_lookup?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 embedding_layer/embedding_lookupResourceGather&embedding_layer_embedding_lookup_50404?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@embedding_layer/embedding_lookup/50404*+
_output_shapes
:?????????@ *
dtype0?
)embedding_layer/embedding_lookup/IdentityIdentity)embedding_layer/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_layer/embedding_lookup/50404*+
_output_shapes
:?????????@ ?
+embedding_layer/embedding_lookup/Identity_1Identity2embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@ g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDims4embedding_layer/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@ ?
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????= *
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????= *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????= b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????= q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeanconv1d/Relu:activations:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_1/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
dropout/dropout/MulMuldense_1/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????]
dropout/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_2/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
dropout_1/dropout/MulMuldense_2/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????_
dropout_1/dropout/ShapeShapedense_2/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp!^embedding_layer/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2D
 embedding_layer/embedding_lookup embedding_layer/embedding_lookup2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_50675
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::P
add/yConst*
_output_shapes
: *
dtype0*
valueB B
table-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: T
add_1/yConst*
_output_shapes
: *
dtype0*
valueB Btable-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_50511

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?O
?
__inference__traced_save_50865
file_prefix9
5savev2_embedding_layer_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop@
<savev2_adam_embedding_layer_embeddings_m_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop@
<savev2_adam_embedding_layer_embeddings_v_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_embedding_layer_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_adam_embedding_layer_embeddings_m_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop<savev2_adam_embedding_layer_embeddings_v_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?? :  : : :::::: : : : : ::: : : : :
?? :  : : ::::::
?? :  : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?? :($
"
_output_shapes
:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?? :($
"
_output_shapes
:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
?? :($
"
_output_shapes
:  :  

_output_shapes
: :$! 

_output_shapes

: : "

_output_shapes
::$# 

_output_shapes

:: $

_output_shapes
::$% 

_output_shapes

:: &

_output_shapes
::'

_output_shapes
: 
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_48727

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?

U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50165

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	:
&embedding_layer_embedding_lookup_50124:
?? H
2conv1d_conv1d_expanddims_1_readvariableop_resource:  4
&conv1d_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp? embedding_layer/embedding_lookup?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 embedding_layer/embedding_lookupResourceGather&embedding_layer_embedding_lookup_50124?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@embedding_layer/embedding_lookup/50124*+
_output_shapes
:?????????@ *
dtype0?
)embedding_layer/embedding_lookup/IdentityIdentity)embedding_layer/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_layer/embedding_lookup/50124*+
_output_shapes
:?????????@ ?
+embedding_layer/embedding_lookup/Identity_1Identity2embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@ g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDims4embedding_layer/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@ ?
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????= *
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????= *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????= b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????= q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeanconv1d/Relu:activations:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_1/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dropout/IdentityIdentitydense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_2/MatMulMatMuldropout/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dropout_1/IdentityIdentitydense_2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp!^embedding_layer/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2D
 embedding_layer/embedding_lookup embedding_layer/embedding_lookup2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_50623

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_50576

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_50520

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_48716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_49823
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_48414o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__traced_restore_50986
file_prefix?
+assignvariableop_embedding_layer_embeddings:
?? 6
 assignvariableop_1_conv1d_kernel:  ,
assignvariableop_2_conv1d_bias: 3
!assignvariableop_3_dense_1_kernel: -
assignvariableop_4_dense_1_bias:3
!assignvariableop_5_dense_2_kernel:-
assignvariableop_6_dense_2_bias:1
assignvariableop_7_dense_kernel:+
assignvariableop_8_dense_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: I
5assignvariableop_18_adam_embedding_layer_embeddings_m:
?? >
(assignvariableop_19_adam_conv1d_kernel_m:  4
&assignvariableop_20_adam_conv1d_bias_m: ;
)assignvariableop_21_adam_dense_1_kernel_m: 5
'assignvariableop_22_adam_dense_1_bias_m:;
)assignvariableop_23_adam_dense_2_kernel_m:5
'assignvariableop_24_adam_dense_2_bias_m:9
'assignvariableop_25_adam_dense_kernel_m:3
%assignvariableop_26_adam_dense_bias_m:I
5assignvariableop_27_adam_embedding_layer_embeddings_v:
?? >
(assignvariableop_28_adam_conv1d_kernel_v:  4
&assignvariableop_29_adam_conv1d_bias_v: ;
)assignvariableop_30_adam_dense_1_kernel_v: 5
'assignvariableop_31_adam_dense_1_bias_v:;
)assignvariableop_32_adam_dense_2_kernel_v:5
'assignvariableop_33_adam_dense_2_bias_v:9
'assignvariableop_34_adam_dense_kernel_v:3
%assignvariableop_35_adam_dense_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp+assignvariableop_embedding_layer_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:14RestoreV2:tensors:15*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp5assignvariableop_18_adam_embedding_layer_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv1d_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_conv1d_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adam_embedding_layer_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_conv1d_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_1_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_2_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_2_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp%assignvariableop_35_adam_dense_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_48716

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
,
__inference__destroyer_50656
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
`
'__inference_dropout_layer_call_fn_50540

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48862o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
*
__inference_<lambda>_50696
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679

inputs	*
embedding_lookup_48673:
?? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_48673inputs*
Tindices0	*)
_class
loc:@embedding_lookup/48673*+
_output_shapes
:?????????@ *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/48673*+
_output_shapes
:?????????@ ?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????@ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_<lambda>_506917
3key_value_init1572_lookuptableimportv2_table_handle/
+key_value_init1572_lookuptableimportv2_keys1
-key_value_init1572_lookuptableimportv2_values	
identity??&key_value_init1572/LookupTableImportV2?
&key_value_init1572/LookupTableImportV2LookupTableImportV23key_value_init1572_lookuptableimportv2_table_handle+key_value_init1572_lookuptableimportv2_keys-key_value_init1572_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1572/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init1572/LookupTableImportV2&key_value_init1572/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?
?
:__inference_CNN_emotion_classification_layer_call_fn_48799
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_48770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_50591

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
.
__inference__initializer_50651
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
C
'__inference_dropout_layer_call_fn_50535

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48727`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
:__inference_CNN_emotion_classification_layer_call_fn_49252
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49192o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_48829

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_1_layer_call_fn_50581

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48750`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_50500

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@ ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????= *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????= *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????= T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????= e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????= ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????@ 
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_48739

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_48770

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	)
embedding_layer_48680:
?? "
conv1d_48700:  
conv1d_48702: 
dense_1_48717: 
dense_1_48719:
dense_2_48740:
dense_2_48742:
dense_48764:
dense_48766:
identity??conv1d/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
'text_vectorization/StaticRegexReplace_2StaticRegexReplace0text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
'text_vectorization/StaticRegexReplace_3StaticRegexReplace0text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
'text_vectorization/StaticRegexReplace_4StaticRegexReplace0text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
'text_vectorization/StaticRegexReplace_5StaticRegexReplace0text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
'text_vectorization/StaticRegexReplace_6StaticRegexReplace0text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
'text_vectorization/StaticRegexReplace_7StaticRegexReplace0text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
'text_vectorization/StaticRegexReplace_8StaticRegexReplace0text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
'text_vectorization/StaticRegexReplace_9StaticRegexReplace0text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
(text_vectorization/StaticRegexReplace_10StaticRegexReplace0text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
(text_vectorization/StaticRegexReplace_11StaticRegexReplace1text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
(text_vectorization/StaticRegexReplace_12StaticRegexReplace1text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_13StaticRegexReplace1text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_14StaticRegexReplace1text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_15StaticRegexReplace1text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_16StaticRegexReplace1text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_17StaticRegexReplace1text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_18StaticRegexReplace1text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_19StaticRegexReplace1text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_20StaticRegexReplace1text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_21StaticRegexReplace1text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_22StaticRegexReplace1text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_23StaticRegexReplace1text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_24StaticRegexReplace1text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_25StaticRegexReplace1text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_26StaticRegexReplace1text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_27StaticRegexReplace1text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_28StaticRegexReplace1text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_29StaticRegexReplace1text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_30StaticRegexReplace1text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_31StaticRegexReplace1text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_32StaticRegexReplace1text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_33StaticRegexReplace1text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_34StaticRegexReplace1text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_35StaticRegexReplace1text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_36StaticRegexReplace1text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_37StaticRegexReplace1text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_38StaticRegexReplace1text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_39StaticRegexReplace1text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_40StaticRegexReplace1text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_41StaticRegexReplace1text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_42StaticRegexReplace1text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_43StaticRegexReplace1text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_44StaticRegexReplace1text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_45StaticRegexReplace1text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_46StaticRegexReplace1text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_47StaticRegexReplace1text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_48StaticRegexReplace1text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_49StaticRegexReplace1text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_50StaticRegexReplace1text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_51StaticRegexReplace1text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_52StaticRegexReplace1text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_53StaticRegexReplace1text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_54StaticRegexReplace1text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_55StaticRegexReplace1text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_56StaticRegexReplace1text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_57StaticRegexReplace1text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_58StaticRegexReplace1text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_59StaticRegexReplace1text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_60StaticRegexReplace1text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_61StaticRegexReplace1text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_62StaticRegexReplace1text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_63StaticRegexReplace1text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_64StaticRegexReplace1text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_65StaticRegexReplace1text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_66StaticRegexReplace1text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_67StaticRegexReplace1text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_68StaticRegexReplace1text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_69StaticRegexReplace1text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_70StaticRegexReplace1text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_71StaticRegexReplace1text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_72StaticRegexReplace1text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_73StaticRegexReplace1text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_74StaticRegexReplace1text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_75StaticRegexReplace1text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_76StaticRegexReplace1text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_77StaticRegexReplace1text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_78StaticRegexReplace1text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_79StaticRegexReplace1text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_80StaticRegexReplace1text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_81StaticRegexReplace1text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_82StaticRegexReplace1text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_83StaticRegexReplace1text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_84StaticRegexReplace1text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_85StaticRegexReplace1text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_86StaticRegexReplace1text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_87StaticRegexReplace1text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_88StaticRegexReplace1text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_89StaticRegexReplace1text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_90StaticRegexReplace1text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_91StaticRegexReplace1text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_92StaticRegexReplace1text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_93StaticRegexReplace1text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_94StaticRegexReplace1text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_95StaticRegexReplace1text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_96StaticRegexReplace1text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_97StaticRegexReplace1text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_98StaticRegexReplace1text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
(text_vectorization/StaticRegexReplace_99StaticRegexReplace1text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_100StaticRegexReplace1text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_101StaticRegexReplace2text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_102StaticRegexReplace2text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_103StaticRegexReplace2text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_104StaticRegexReplace2text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_105StaticRegexReplace2text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_106StaticRegexReplace2text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_107StaticRegexReplace2text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_108StaticRegexReplace2text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_109StaticRegexReplace2text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_110StaticRegexReplace2text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_111StaticRegexReplace2text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_112StaticRegexReplace2text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_113StaticRegexReplace2text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_114StaticRegexReplace2text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_115StaticRegexReplace2text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_116StaticRegexReplace2text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_117StaticRegexReplace2text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_118StaticRegexReplace2text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_119StaticRegexReplace2text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_120StaticRegexReplace2text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_121StaticRegexReplace2text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_122StaticRegexReplace2text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_123StaticRegexReplace2text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_124StaticRegexReplace2text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_125StaticRegexReplace2text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_126StaticRegexReplace2text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_127StaticRegexReplace2text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_128StaticRegexReplace2text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_129StaticRegexReplace2text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_130StaticRegexReplace2text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_131StaticRegexReplace2text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_132StaticRegexReplace2text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_133StaticRegexReplace2text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_134StaticRegexReplace2text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_135StaticRegexReplace2text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_136StaticRegexReplace2text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_137StaticRegexReplace2text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_138StaticRegexReplace2text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_139StaticRegexReplace2text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_140StaticRegexReplace2text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_141StaticRegexReplace2text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_142StaticRegexReplace2text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_143StaticRegexReplace2text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_144StaticRegexReplace2text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_145StaticRegexReplace2text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_146StaticRegexReplace2text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_147StaticRegexReplace2text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_148StaticRegexReplace2text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_149StaticRegexReplace2text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_150StaticRegexReplace2text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_151StaticRegexReplace2text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_152StaticRegexReplace2text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_153StaticRegexReplace2text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_154StaticRegexReplace2text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_155StaticRegexReplace2text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_156StaticRegexReplace2text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_157StaticRegexReplace2text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_158StaticRegexReplace2text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_159StaticRegexReplace2text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_160StaticRegexReplace2text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_161StaticRegexReplace2text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_162StaticRegexReplace2text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_163StaticRegexReplace2text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_164StaticRegexReplace2text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_165StaticRegexReplace2text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_166StaticRegexReplace2text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_167StaticRegexReplace2text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_168StaticRegexReplace2text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_169StaticRegexReplace2text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_170StaticRegexReplace2text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_171StaticRegexReplace2text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_172StaticRegexReplace2text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_173StaticRegexReplace2text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_174StaticRegexReplace2text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_175StaticRegexReplace2text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_176StaticRegexReplace2text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_177StaticRegexReplace2text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_178StaticRegexReplace2text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_179StaticRegexReplace2text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_180StaticRegexReplace2text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_181StaticRegexReplace2text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_182StaticRegexReplace2text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_183StaticRegexReplace2text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_184StaticRegexReplace2text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_185StaticRegexReplace2text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_186StaticRegexReplace2text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_187StaticRegexReplace2text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_188StaticRegexReplace2text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
)text_vectorization/StaticRegexReplace_189StaticRegexReplace2text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV22text_vectorization/StaticRegexReplace_189:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_layer_48680*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_48679?
conv1d/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0conv1d_48700conv1d_48702*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_48699?
(global_average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424?
dense_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_1_48717dense_1_48719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_48716?
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_48727?
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_48740dense_2_48742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_48739?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48750?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_48764dense_48766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_48763u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_dense_layer_call_fn_50612

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_48763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_48414
text_vectorization_inputp
lcnn_emotion_classification_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleq
mcnn_emotion_classification_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	G
Ccnn_emotion_classification_text_vectorization_string_lookup_equal_yJ
Fcnn_emotion_classification_text_vectorization_string_lookup_selectv2_t	U
Acnn_emotion_classification_embedding_layer_embedding_lookup_48373:
?? c
Mcnn_emotion_classification_conv1d_conv1d_expanddims_1_readvariableop_resource:  O
Acnn_emotion_classification_conv1d_biasadd_readvariableop_resource: S
Acnn_emotion_classification_dense_1_matmul_readvariableop_resource: P
Bcnn_emotion_classification_dense_1_biasadd_readvariableop_resource:S
Acnn_emotion_classification_dense_2_matmul_readvariableop_resource:P
Bcnn_emotion_classification_dense_2_biasadd_readvariableop_resource:Q
?cnn_emotion_classification_dense_matmul_readvariableop_resource:N
@cnn_emotion_classification_dense_biasadd_readvariableop_resource:
identity??8CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOp?DCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?7CNN_emotion_classification/dense/BiasAdd/ReadVariableOp?6CNN_emotion_classification/dense/MatMul/ReadVariableOp?9CNN_emotion_classification/dense_1/BiasAdd/ReadVariableOp?8CNN_emotion_classification/dense_1/MatMul/ReadVariableOp?9CNN_emotion_classification/dense_2/BiasAdd/ReadVariableOp?8CNN_emotion_classification/dense_2/MatMul/ReadVariableOp?;CNN_emotion_classification/embedding_layer/embedding_lookup?_CNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2?
9CNN_emotion_classification/text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
@CNN_emotion_classification/text_vectorization/StaticRegexReplaceStaticRegexReplaceBCNN_emotion_classification/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*
patternwon't*
rewrite
will not?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_1StaticRegexReplaceICNN_emotion_classification/text_vectorization/StaticRegexReplace:output:0*#
_output_shapes
:?????????*
patterncan't*
rewrite	can not?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_2StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_1:output:0*#
_output_shapes
:?????????*
patternn't*
rewrite not?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_3StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_2:output:0*#
_output_shapes
:?????????*
pattern're*
rewrite are?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_4StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_3:output:0*#
_output_shapes
:?????????*
pattern's*
rewrite is?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_5StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_4:output:0*#
_output_shapes
:?????????*
pattern'd*
rewrite would?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_6StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_5:output:0*#
_output_shapes
:?????????*
pattern'll*
rewrite will?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_7StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_6:output:0*#
_output_shapes
:?????????*
pattern't*
rewrite not?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_8StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_7:output:0*#
_output_shapes
:?????????*
pattern've*
rewrite have?
BCNN_emotion_classification/text_vectorization/StaticRegexReplace_9StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_8:output:0*#
_output_shapes
:?????????*
pattern'm*
rewrite am?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_10StaticRegexReplaceKCNN_emotion_classification/text_vectorization/StaticRegexReplace_9:output:0*#
_output_shapes
:?????????*+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_11StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_10:output:0*#
_output_shapes
:?????????*
pattern[^A-Za-z0-9]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_12StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_11:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_13StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_12:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_14StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_13:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_15StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_14:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_16StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_15:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_17StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_16:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_18StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_17:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_19StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_18:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_20StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_19:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_21StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_20:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_22StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_21:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_23StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_22:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_24StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_23:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_25StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_24:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_26StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_25:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_27StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_26:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_28StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_27:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_29StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_28:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_30StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_29:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_31StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_30:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_32StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_31:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_33StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_32:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_34StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_33:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_35StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_34:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_36StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_35:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_37StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_36:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_38StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_37:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_39StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_38:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_40StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_39:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_41StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_40:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_42StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_41:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_43StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_42:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_44StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_43:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_45StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_44:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_46StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_45:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_47StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_46:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_48StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_47:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_49StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_48:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_50StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_49:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_51StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_50:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_52StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_51:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_53StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_52:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_54StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_53:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_55StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_54:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_56StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_55:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_57StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_56:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_58StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_57:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_59StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_58:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_60StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_59:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_61StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_60:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_62StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_61:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_63StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_62:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_64StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_63:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_65StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_64:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_66StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_65:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_67StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_66:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_68StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_67:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_69StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_68:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_70StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_69:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_71StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_70:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_72StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_71:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_73StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_72:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_74StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_73:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_75StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_74:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_76StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_75:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_77StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_76:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_78StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_77:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_79StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_78:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_80StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_79:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_81StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_80:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_82StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_81:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_83StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_82:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_84StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_83:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_85StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_84:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_86StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_85:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_87StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_86:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_88StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_87:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_89StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_88:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_90StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_89:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_91StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_90:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_92StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_91:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_93StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_92:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_94StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_93:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_95StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_94:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_96StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_95:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_97StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_96:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_98StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_97:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
CCNN_emotion_classification/text_vectorization/StaticRegexReplace_99StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_98:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_100StaticRegexReplaceLCNN_emotion_classification/text_vectorization/StaticRegexReplace_99:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_101StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_100:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_102StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_101:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_103StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_102:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_104StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_103:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_105StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_104:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_106StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_105:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_107StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_106:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_108StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_107:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_109StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_108:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_110StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_109:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_111StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_110:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_112StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_111:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_113StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_112:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_114StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_113:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_115StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_114:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_116StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_115:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_117StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_116:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_118StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_117:output:0*#
_output_shapes
:?????????*1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_119StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_118:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_120StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_119:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_121StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_120:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_122StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_121:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_123StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_122:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_124StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_123:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_125StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_124:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_126StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_125:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_127StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_126:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_128StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_127:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_129StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_128:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_130StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_129:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_131StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_130:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_132StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_131:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_133StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_132:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_134StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_133:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_135StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_134:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_136StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_135:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_137StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_136:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_138StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_137:output:0*#
_output_shapes
:?????????*3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_139StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_138:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_140StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_139:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_141StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_140:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_142StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_141:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_143StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_142:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_144StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_143:output:0*#
_output_shapes
:?????????*2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_145StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_144:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_146StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_145:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_147StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_146:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_148StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_147:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_149StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_148:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_150StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_149:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_151StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_150:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_152StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_151:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_153StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_152:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_154StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_153:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_155StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_154:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_156StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_155:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_157StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_156:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_158StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_157:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_159StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_158:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_160StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_159:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_161StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_160:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_162StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_161:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_163StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_162:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_164StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_163:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_165StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_164:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_166StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_165:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_167StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_166:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_168StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_167:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_169StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_168:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_170StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_169:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_171StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_170:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_172StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_171:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_173StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_172:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_174StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_173:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_175StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_174:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_176StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_175:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_177StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_176:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_178StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_177:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_179StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_178:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_180StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_179:output:0*#
_output_shapes
:?????????*+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_181StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_180:output:0*#
_output_shapes
:?????????*0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_182StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_181:output:0*#
_output_shapes
:?????????**
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_183StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_182:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_184StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_183:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_185StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_184:output:0*#
_output_shapes
:?????????*/
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_186StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_185:output:0*#
_output_shapes
:?????????*,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_187StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_186:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_188StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_187:output:0*#
_output_shapes
:?????????*.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
DCNN_emotion_classification/text_vectorization/StaticRegexReplace_189StaticRegexReplaceMCNN_emotion_classification/text_vectorization/StaticRegexReplace_188:output:0*#
_output_shapes
:?????????*-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite ?
?CNN_emotion_classification/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
GCNN_emotion_classification/text_vectorization/StringSplit/StringSplitV2StringSplitV2MCNN_emotion_classification/text_vectorization/StaticRegexReplace_189:output:0HCNN_emotion_classification/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
MCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
OCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
OCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
GCNN_emotion_classification/text_vectorization/StringSplit/strided_sliceStridedSliceQCNN_emotion_classification/text_vectorization/StringSplit/StringSplitV2:indices:0VCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stack:output:0XCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stack_1:output:0XCNN_emotion_classification/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
OCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
QCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ICNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1StridedSliceOCNN_emotion_classification/text_vectorization/StringSplit/StringSplitV2:shape:0XCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stack:output:0ZCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0ZCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
pCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastPCNN_emotion_classification/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
rCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastRCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
zCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapetCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
zCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
yCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
~CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
yCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
xCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxtCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
zCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
xCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
xCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul}CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumvCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumvCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
|CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
}CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
wCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
rCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
{CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
wCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
rCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0xCNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0?CNN_emotion_classification/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
_CNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2lcnn_emotion_classification_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handlePCNN_emotion_classification/text_vectorization/StringSplit/StringSplitV2:values:0mcnn_emotion_classification_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
ACNN_emotion_classification/text_vectorization/string_lookup/EqualEqualPCNN_emotion_classification/text_vectorization/StringSplit/StringSplitV2:values:0Ccnn_emotion_classification_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
DCNN_emotion_classification/text_vectorization/string_lookup/SelectV2SelectV2ECNN_emotion_classification/text_vectorization/string_lookup/Equal:z:0Fcnn_emotion_classification_text_vectorization_string_lookup_selectv2_thCNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
DCNN_emotion_classification/text_vectorization/string_lookup/IdentityIdentityMCNN_emotion_classification/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
JCNN_emotion_classification/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
BCNN_emotion_classification/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????@       ?
QCNN_emotion_classification/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorKCNN_emotion_classification/text_vectorization/RaggedToTensor/Const:output:0MCNN_emotion_classification/text_vectorization/string_lookup/Identity:output:0SCNN_emotion_classification/text_vectorization/RaggedToTensor/default_value:output:0RCNN_emotion_classification/text_vectorization/StringSplit/strided_slice_1:output:0PCNN_emotion_classification/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????@*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
;CNN_emotion_classification/embedding_layer/embedding_lookupResourceGatherAcnn_emotion_classification_embedding_layer_embedding_lookup_48373ZCNN_emotion_classification/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*T
_classJ
HFloc:@CNN_emotion_classification/embedding_layer/embedding_lookup/48373*+
_output_shapes
:?????????@ *
dtype0?
DCNN_emotion_classification/embedding_layer/embedding_lookup/IdentityIdentityDCNN_emotion_classification/embedding_layer/embedding_lookup:output:0*
T0*T
_classJ
HFloc:@CNN_emotion_classification/embedding_layer/embedding_lookup/48373*+
_output_shapes
:?????????@ ?
FCNN_emotion_classification/embedding_layer/embedding_lookup/Identity_1IdentityMCNN_emotion_classification/embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@ ?
7CNN_emotion_classification/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3CNN_emotion_classification/conv1d/Conv1D/ExpandDims
ExpandDimsOCNN_emotion_classification/embedding_layer/embedding_lookup/Identity_1:output:0@CNN_emotion_classification/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????@ ?
DCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpMcnn_emotion_classification_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0{
9CNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
5CNN_emotion_classification/conv1d/Conv1D/ExpandDims_1
ExpandDimsLCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0BCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
(CNN_emotion_classification/conv1d/Conv1DConv2D<CNN_emotion_classification/conv1d/Conv1D/ExpandDims:output:0>CNN_emotion_classification/conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????= *
paddingVALID*
strides
?
0CNN_emotion_classification/conv1d/Conv1D/SqueezeSqueeze1CNN_emotion_classification/conv1d/Conv1D:output:0*
T0*+
_output_shapes
:?????????= *
squeeze_dims

??????????
8CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOpReadVariableOpAcnn_emotion_classification_conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
)CNN_emotion_classification/conv1d/BiasAddBiasAdd9CNN_emotion_classification/conv1d/Conv1D/Squeeze:output:0@CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????= ?
&CNN_emotion_classification/conv1d/ReluRelu2CNN_emotion_classification/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????= ?
JCNN_emotion_classification/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
8CNN_emotion_classification/global_average_pooling1d/MeanMean4CNN_emotion_classification/conv1d/Relu:activations:0SCNN_emotion_classification/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
8CNN_emotion_classification/dense_1/MatMul/ReadVariableOpReadVariableOpAcnn_emotion_classification_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
)CNN_emotion_classification/dense_1/MatMulMatMulACNN_emotion_classification/global_average_pooling1d/Mean:output:0@CNN_emotion_classification/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9CNN_emotion_classification/dense_1/BiasAdd/ReadVariableOpReadVariableOpBcnn_emotion_classification_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
*CNN_emotion_classification/dense_1/BiasAddBiasAdd3CNN_emotion_classification/dense_1/MatMul:product:0ACNN_emotion_classification/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+CNN_emotion_classification/dropout/IdentityIdentity3CNN_emotion_classification/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
8CNN_emotion_classification/dense_2/MatMul/ReadVariableOpReadVariableOpAcnn_emotion_classification_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
)CNN_emotion_classification/dense_2/MatMulMatMul4CNN_emotion_classification/dropout/Identity:output:0@CNN_emotion_classification/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9CNN_emotion_classification/dense_2/BiasAdd/ReadVariableOpReadVariableOpBcnn_emotion_classification_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
*CNN_emotion_classification/dense_2/BiasAddBiasAdd3CNN_emotion_classification/dense_2/MatMul:product:0ACNN_emotion_classification/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-CNN_emotion_classification/dropout_1/IdentityIdentity3CNN_emotion_classification/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
6CNN_emotion_classification/dense/MatMul/ReadVariableOpReadVariableOp?cnn_emotion_classification_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
'CNN_emotion_classification/dense/MatMulMatMul6CNN_emotion_classification/dropout_1/Identity:output:0>CNN_emotion_classification/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
7CNN_emotion_classification/dense/BiasAdd/ReadVariableOpReadVariableOp@cnn_emotion_classification_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
(CNN_emotion_classification/dense/BiasAddBiasAdd1CNN_emotion_classification/dense/MatMul:product:0?CNN_emotion_classification/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(CNN_emotion_classification/dense/SoftmaxSoftmax1CNN_emotion_classification/dense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentity2CNN_emotion_classification/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp9^CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOpE^CNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOp8^CNN_emotion_classification/dense/BiasAdd/ReadVariableOp7^CNN_emotion_classification/dense/MatMul/ReadVariableOp:^CNN_emotion_classification/dense_1/BiasAdd/ReadVariableOp9^CNN_emotion_classification/dense_1/MatMul/ReadVariableOp:^CNN_emotion_classification/dense_2/BiasAdd/ReadVariableOp9^CNN_emotion_classification/dense_2/MatMul/ReadVariableOp<^CNN_emotion_classification/embedding_layer/embedding_lookup`^CNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2t
8CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOp8CNN_emotion_classification/conv1d/BiasAdd/ReadVariableOp2?
DCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOpDCNN_emotion_classification/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2r
7CNN_emotion_classification/dense/BiasAdd/ReadVariableOp7CNN_emotion_classification/dense/BiasAdd/ReadVariableOp2p
6CNN_emotion_classification/dense/MatMul/ReadVariableOp6CNN_emotion_classification/dense/MatMul/ReadVariableOp2v
9CNN_emotion_classification/dense_1/BiasAdd/ReadVariableOp9CNN_emotion_classification/dense_1/BiasAdd/ReadVariableOp2t
8CNN_emotion_classification/dense_1/MatMul/ReadVariableOp8CNN_emotion_classification/dense_1/MatMul/ReadVariableOp2v
9CNN_emotion_classification/dense_2/BiasAdd/ReadVariableOp9CNN_emotion_classification/dense_2/BiasAdd/ReadVariableOp2t
8CNN_emotion_classification/dense_2/MatMul/ReadVariableOp8CNN_emotion_classification/dense_2/MatMul/ReadVariableOp2z
;CNN_emotion_classification/embedding_layer/embedding_lookup;CNN_emotion_classification/embedding_layer/embedding_lookup2?
_CNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2_CNN_emotion_classification/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
:__inference_CNN_emotion_classification_layer_call_fn_49885

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49192o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
__inference_adapt_step_35304
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*
_output_shapes
: *
output_shapes
: *
output_types
2T
StringLowerStringLowerIteratorGetNext:components:0*
_output_shapes
: ?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*
_output_shapes
: *
patternwon't*
rewrite
will not?
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*
_output_shapes
: *
patterncan't*
rewrite	can not?
StaticRegexReplace_2StaticRegexReplaceStaticRegexReplace_1:output:0*
_output_shapes
: *
patternn't*
rewrite not?
StaticRegexReplace_3StaticRegexReplaceStaticRegexReplace_2:output:0*
_output_shapes
: *
pattern're*
rewrite are?
StaticRegexReplace_4StaticRegexReplaceStaticRegexReplace_3:output:0*
_output_shapes
: *
pattern's*
rewrite is?
StaticRegexReplace_5StaticRegexReplaceStaticRegexReplace_4:output:0*
_output_shapes
: *
pattern'd*
rewrite would?
StaticRegexReplace_6StaticRegexReplaceStaticRegexReplace_5:output:0*
_output_shapes
: *
pattern'll*
rewrite will?
StaticRegexReplace_7StaticRegexReplaceStaticRegexReplace_6:output:0*
_output_shapes
: *
pattern't*
rewrite not?
StaticRegexReplace_8StaticRegexReplaceStaticRegexReplace_7:output:0*
_output_shapes
: *
pattern've*
rewrite have?
StaticRegexReplace_9StaticRegexReplaceStaticRegexReplace_8:output:0*
_output_shapes
: *
pattern'm*
rewrite am?
StaticRegexReplace_10StaticRegexReplaceStaticRegexReplace_9:output:0*
_output_shapes
: *+
pattern \d+(?:\.\d*)?(?:[eE][+-]?\d+)?*
rewrite ?
StaticRegexReplace_11StaticRegexReplaceStaticRegexReplace_10:output:0*
_output_shapes
: *
pattern[^A-Za-z0-9]+*
rewrite ?
StaticRegexReplace_12StaticRegexReplaceStaticRegexReplace_11:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+below[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_13StaticRegexReplaceStaticRegexReplace_12:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+whom[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_14StaticRegexReplaceStaticRegexReplace_13:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+very[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_15StaticRegexReplaceStaticRegexReplace_14:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+which[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_16StaticRegexReplaceStaticRegexReplace_15:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+nor[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_17StaticRegexReplaceStaticRegexReplace_16:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+after[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_18StaticRegexReplaceStaticRegexReplace_17:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+aren't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_19StaticRegexReplaceStaticRegexReplace_18:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+doesn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_20StaticRegexReplaceStaticRegexReplace_19:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+y[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_21StaticRegexReplaceStaticRegexReplace_20:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+he[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_22StaticRegexReplaceStaticRegexReplace_21:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+of[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_23StaticRegexReplaceStaticRegexReplace_22:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+all[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_24StaticRegexReplaceStaticRegexReplace_23:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+weren't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_25StaticRegexReplaceStaticRegexReplace_24:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+himself[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_26StaticRegexReplaceStaticRegexReplace_25:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+and[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_27StaticRegexReplaceStaticRegexReplace_26:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+haven[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_28StaticRegexReplaceStaticRegexReplace_27:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+mustn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_29StaticRegexReplaceStaticRegexReplace_28:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+hasn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_30StaticRegexReplaceStaticRegexReplace_29:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+if[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_31StaticRegexReplaceStaticRegexReplace_30:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+you'd[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_32StaticRegexReplaceStaticRegexReplace_31:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+or[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_33StaticRegexReplaceStaticRegexReplace_32:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+when[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_34StaticRegexReplaceStaticRegexReplace_33:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+been[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_35StaticRegexReplaceStaticRegexReplace_34:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+than[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_36StaticRegexReplaceStaticRegexReplace_35:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+both[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_37StaticRegexReplaceStaticRegexReplace_36:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+that'll[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_38StaticRegexReplaceStaticRegexReplace_37:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+had[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_39StaticRegexReplaceStaticRegexReplace_38:output:0*
_output_shapes
: *1
pattern&$[^A-Za-z0-9_]+couldn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_40StaticRegexReplaceStaticRegexReplace_39:output:0*
_output_shapes
: *1
pattern&$[^A-Za-z0-9_]+mightn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_41StaticRegexReplaceStaticRegexReplace_40:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+ll[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_42StaticRegexReplaceStaticRegexReplace_41:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+wasn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_43StaticRegexReplaceStaticRegexReplace_42:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+is[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_44StaticRegexReplaceStaticRegexReplace_43:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+these[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_45StaticRegexReplaceStaticRegexReplace_44:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+between[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_46StaticRegexReplaceStaticRegexReplace_45:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+were[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_47StaticRegexReplaceStaticRegexReplace_46:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+weren[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_48StaticRegexReplaceStaticRegexReplace_47:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+having[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_49StaticRegexReplaceStaticRegexReplace_48:output:0*
_output_shapes
: *2
pattern'%[^A-Za-z0-9_]+ourselves[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_50StaticRegexReplaceStaticRegexReplace_49:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+but[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_51StaticRegexReplaceStaticRegexReplace_50:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+her[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_52StaticRegexReplaceStaticRegexReplace_51:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+you've[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_53StaticRegexReplaceStaticRegexReplace_52:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+itself[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_54StaticRegexReplaceStaticRegexReplace_53:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+ve[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_55StaticRegexReplaceStaticRegexReplace_54:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+she's[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_56StaticRegexReplaceStaticRegexReplace_55:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+now[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_57StaticRegexReplaceStaticRegexReplace_56:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+into[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_58StaticRegexReplaceStaticRegexReplace_57:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+mightn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_59StaticRegexReplaceStaticRegexReplace_58:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+herself[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_60StaticRegexReplaceStaticRegexReplace_59:output:0*
_output_shapes
: *2
pattern'%[^A-Za-z0-9_]+shouldn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_61StaticRegexReplaceStaticRegexReplace_60:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+couldn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_62StaticRegexReplaceStaticRegexReplace_61:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+only[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_63StaticRegexReplaceStaticRegexReplace_62:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+ours[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_64StaticRegexReplaceStaticRegexReplace_63:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+will[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_65StaticRegexReplaceStaticRegexReplace_64:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+about[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_66StaticRegexReplaceStaticRegexReplace_65:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+an[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_67StaticRegexReplaceStaticRegexReplace_66:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+then[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_68StaticRegexReplaceStaticRegexReplace_67:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+didn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_69StaticRegexReplaceStaticRegexReplace_68:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+we[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_70StaticRegexReplaceStaticRegexReplace_69:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+what[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_71StaticRegexReplaceStaticRegexReplace_70:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+against[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_72StaticRegexReplaceStaticRegexReplace_71:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+own[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_73StaticRegexReplaceStaticRegexReplace_72:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+are[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_74StaticRegexReplaceStaticRegexReplace_73:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+can[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_75StaticRegexReplaceStaticRegexReplace_74:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+above[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_76StaticRegexReplaceStaticRegexReplace_75:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+at[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_77StaticRegexReplaceStaticRegexReplace_76:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+once[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_78StaticRegexReplaceStaticRegexReplace_77:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+shan[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_79StaticRegexReplaceStaticRegexReplace_78:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+this[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_80StaticRegexReplaceStaticRegexReplace_79:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+under[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_81StaticRegexReplaceStaticRegexReplace_80:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+where[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_82StaticRegexReplaceStaticRegexReplace_81:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+out[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_83StaticRegexReplaceStaticRegexReplace_82:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+hasn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_84StaticRegexReplaceStaticRegexReplace_83:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+each[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_85StaticRegexReplaceStaticRegexReplace_84:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+just[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_86StaticRegexReplaceStaticRegexReplace_85:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+yours[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_87StaticRegexReplaceStaticRegexReplace_86:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+such[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_88StaticRegexReplaceStaticRegexReplace_87:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+won't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_89StaticRegexReplaceStaticRegexReplace_88:output:0*
_output_shapes
: *1
pattern&$[^A-Za-z0-9_]+yourself[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_90StaticRegexReplaceStaticRegexReplace_89:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+for[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_91StaticRegexReplaceStaticRegexReplace_90:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+off[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_92StaticRegexReplaceStaticRegexReplace_91:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+needn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_93StaticRegexReplaceStaticRegexReplace_92:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+wasn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_94StaticRegexReplaceStaticRegexReplace_93:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+same[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_95StaticRegexReplaceStaticRegexReplace_94:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+during[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_96StaticRegexReplaceStaticRegexReplace_95:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+to[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_97StaticRegexReplaceStaticRegexReplace_96:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+re[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_98StaticRegexReplaceStaticRegexReplace_97:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+was[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_99StaticRegexReplaceStaticRegexReplace_98:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+mustn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_100StaticRegexReplaceStaticRegexReplace_99:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+being[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_101StaticRegexReplaceStaticRegexReplace_100:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+aren[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_102StaticRegexReplaceStaticRegexReplace_101:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+there[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_103StaticRegexReplaceStaticRegexReplace_102:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+you[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_104StaticRegexReplaceStaticRegexReplace_103:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+those[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_105StaticRegexReplaceStaticRegexReplace_104:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+from[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_106StaticRegexReplaceStaticRegexReplace_105:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+needn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_107StaticRegexReplaceStaticRegexReplace_106:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+isn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_108StaticRegexReplaceStaticRegexReplace_107:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+them[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_109StaticRegexReplaceStaticRegexReplace_108:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+too[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_110StaticRegexReplaceStaticRegexReplace_109:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+his[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_111StaticRegexReplaceStaticRegexReplace_110:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+shan't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_112StaticRegexReplaceStaticRegexReplace_111:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+up[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_113StaticRegexReplaceStaticRegexReplace_112:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+by[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_114StaticRegexReplaceStaticRegexReplace_113:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+don[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_115StaticRegexReplaceStaticRegexReplace_114:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+most[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_116StaticRegexReplaceStaticRegexReplace_115:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+should[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_117StaticRegexReplaceStaticRegexReplace_116:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+more[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_118StaticRegexReplaceStaticRegexReplace_117:output:0*
_output_shapes
: *1
pattern&$[^A-Za-z0-9_]+wouldn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_119StaticRegexReplaceStaticRegexReplace_118:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+be[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_120StaticRegexReplaceStaticRegexReplace_119:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+ma[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_121StaticRegexReplaceStaticRegexReplace_120:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+your[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_122StaticRegexReplaceStaticRegexReplace_121:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+my[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_123StaticRegexReplaceStaticRegexReplace_122:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+their[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_124StaticRegexReplaceStaticRegexReplace_123:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+shouldn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_125StaticRegexReplaceStaticRegexReplace_124:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+hadn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_126StaticRegexReplaceStaticRegexReplace_125:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+did[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_127StaticRegexReplaceStaticRegexReplace_126:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+a[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_128StaticRegexReplaceStaticRegexReplace_127:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+you're[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_129StaticRegexReplaceStaticRegexReplace_128:output:0*
_output_shapes
: *3
pattern(&[^A-Za-z0-9_]+themselves[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_130StaticRegexReplaceStaticRegexReplace_129:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+other[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_131StaticRegexReplaceStaticRegexReplace_130:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+has[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_132StaticRegexReplaceStaticRegexReplace_131:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+s[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_133StaticRegexReplaceStaticRegexReplace_132:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+does[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_134StaticRegexReplaceStaticRegexReplace_133:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+because[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_135StaticRegexReplaceStaticRegexReplace_134:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+its[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_136StaticRegexReplaceStaticRegexReplace_135:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+why[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_137StaticRegexReplaceStaticRegexReplace_136:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+isn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_138StaticRegexReplaceStaticRegexReplace_137:output:0*
_output_shapes
: *3
pattern(&[^A-Za-z0-9_]+yourselves[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_139StaticRegexReplaceStaticRegexReplace_138:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+m[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_140StaticRegexReplaceStaticRegexReplace_139:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+as[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_141StaticRegexReplaceStaticRegexReplace_140:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+our[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_142StaticRegexReplaceStaticRegexReplace_141:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+won[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_143StaticRegexReplaceStaticRegexReplace_142:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+theirs[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_144StaticRegexReplaceStaticRegexReplace_143:output:0*
_output_shapes
: *2
pattern'%[^A-Za-z0-9_]+should've[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_145StaticRegexReplaceStaticRegexReplace_144:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+here[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_146StaticRegexReplaceStaticRegexReplace_145:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+she[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_147StaticRegexReplaceStaticRegexReplace_146:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+o[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_148StaticRegexReplaceStaticRegexReplace_147:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+you'll[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_149StaticRegexReplaceStaticRegexReplace_148:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+how[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_150StaticRegexReplaceStaticRegexReplace_149:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+so[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_151StaticRegexReplaceStaticRegexReplace_150:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+it[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_152StaticRegexReplaceStaticRegexReplace_151:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+hers[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_153StaticRegexReplaceStaticRegexReplace_152:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+no[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_154StaticRegexReplaceStaticRegexReplace_153:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+don't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_155StaticRegexReplaceStaticRegexReplace_154:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+him[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_156StaticRegexReplaceStaticRegexReplace_155:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+through[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_157StaticRegexReplaceStaticRegexReplace_156:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+i[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_158StaticRegexReplaceStaticRegexReplace_157:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+have[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_159StaticRegexReplaceStaticRegexReplace_158:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+the[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_160StaticRegexReplaceStaticRegexReplace_159:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+while[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_161StaticRegexReplaceStaticRegexReplace_160:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+down[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_162StaticRegexReplaceStaticRegexReplace_161:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+few[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_163StaticRegexReplaceStaticRegexReplace_162:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+doesn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_164StaticRegexReplaceStaticRegexReplace_163:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+with[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_165StaticRegexReplaceStaticRegexReplace_164:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+am[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_166StaticRegexReplaceStaticRegexReplace_165:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+myself[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_167StaticRegexReplaceStaticRegexReplace_166:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+do[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_168StaticRegexReplaceStaticRegexReplace_167:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+again[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_169StaticRegexReplaceStaticRegexReplace_168:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+wouldn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_170StaticRegexReplaceStaticRegexReplace_169:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+that[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_171StaticRegexReplaceStaticRegexReplace_170:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+me[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_172StaticRegexReplaceStaticRegexReplace_171:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+who[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_173StaticRegexReplaceStaticRegexReplace_172:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+over[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_174StaticRegexReplaceStaticRegexReplace_173:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+on[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_175StaticRegexReplaceStaticRegexReplace_174:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+hadn[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_176StaticRegexReplaceStaticRegexReplace_175:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+they[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_177StaticRegexReplaceStaticRegexReplace_176:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+doing[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_178StaticRegexReplaceStaticRegexReplace_177:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+t[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_179StaticRegexReplaceStaticRegexReplace_178:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+haven't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_180StaticRegexReplaceStaticRegexReplace_179:output:0*
_output_shapes
: *+
pattern [^A-Za-z0-9_]+in[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_181StaticRegexReplaceStaticRegexReplace_180:output:0*
_output_shapes
: *0
pattern%#[^A-Za-z0-9_]+further[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_182StaticRegexReplaceStaticRegexReplace_181:output:0*
_output_shapes
: **
pattern[^A-Za-z0-9_]+d[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_183StaticRegexReplaceStaticRegexReplace_182:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+ain[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_184StaticRegexReplaceStaticRegexReplace_183:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+didn't[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_185StaticRegexReplaceStaticRegexReplace_184:output:0*
_output_shapes
: */
pattern$"[^A-Za-z0-9_]+before[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_186StaticRegexReplaceStaticRegexReplace_185:output:0*
_output_shapes
: *,
pattern![^A-Za-z0-9_]+any[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_187StaticRegexReplaceStaticRegexReplace_186:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+it's[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_188StaticRegexReplaceStaticRegexReplace_187:output:0*
_output_shapes
: *.
pattern#![^A-Za-z0-9_]+until[^A-Za-z0-9_]+*
rewrite ?
StaticRegexReplace_189StaticRegexReplaceStaticRegexReplace_188:output:0*
_output_shapes
: *-
pattern" [^A-Za-z0-9_]+some[^A-Za-z0-9_]+*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_189:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
?
T
8__inference_global_average_pooling1d_layer_call_fn_50505

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
F
__inference__creator_50646
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

?
@__inference_dense_layer_call_and_return_conditional_losses_48763

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_50683
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
:__inference_CNN_emotion_classification_layer_call_fn_49854

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_48770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_48862

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_50641
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
b
)__inference_dropout_1_layer_call_fn_50586

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_48829o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_50475

inputs	*
embedding_lookup_50469:
?? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_50469inputs*
Tindices0	*)
_class
loc:@embedding_lookup/50469*+
_output_shapes
:?????????@ *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/50469*+
_output_shapes
:?????????@ ?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????@ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_48424

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
:
__inference__creator_50628
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1573*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_50530

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
&__inference_conv1d_layer_call_fn_50484

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_48699s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????= `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@ 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
text_vectorization_input=
*serving_default_text_vectorization_input:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
?
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
_
1
#2
$3
24
35
A6
B7
P8
Q9"
trackable_list_wrapper
_
0
#1
$2
23
34
A5
B6
P7
Q8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_32?
:__inference_CNN_emotion_classification_layer_call_fn_48799
:__inference_CNN_emotion_classification_layer_call_fn_49854
:__inference_CNN_emotion_classification_layer_call_fn_49885
:__inference_CNN_emotion_classification_layer_call_fn_49252?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zWtrace_0zXtrace_1zYtrace_2zZtrace_3
?
[trace_0
\trace_1
]trace_2
^trace_32?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50165
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50459
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49518
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49784?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z[trace_0z\trace_1z]trace_2z^trace_3
?B?
 __inference__wrapped_model_48414text_vectorization_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
_iter

`beta_1

abeta_2
	bdecay
clearning_ratem?#m?$m?2m?3m?Am?Bm?Pm?Qm?v?#v?$v?2v?3v?Av?Bv?Pv?Qv?"
	optimizer
,
dserving_default"
signature_map
"
_generic_user_object
L
e	keras_api
flookup_table
gtoken_counts"
_tf_keras_layer
?
htrace_02?
__inference_adapt_step_35304?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zhtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ntrace_02?
/__inference_embedding_layer_layer_call_fn_50466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zntrace_0
?
otrace_02?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_50475?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zotrace_0
.:,
?? 2embedding_layer/embeddings
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
?
utrace_02?
&__inference_conv1d_layer_call_fn_50484?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zutrace_0
?
vtrace_02?
A__inference_conv1d_layer_call_and_return_conditional_losses_50500?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zvtrace_0
#:!  2conv1d/kernel
: 2conv1d/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
?
|trace_02?
8__inference_global_average_pooling1d_layer_call_fn_50505?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z|trace_0
?
}trace_02?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_50511?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z}trace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_1_layer_call_fn_50520?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_dense_1_layer_call_and_return_conditional_losses_50530?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 : 2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
'__inference_dropout_layer_call_fn_50535
'__inference_dropout_layer_call_fn_50540?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
B__inference_dropout_layer_call_and_return_conditional_losses_50545
B__inference_dropout_layer_call_and_return_conditional_losses_50557?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_2_layer_call_fn_50566?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_dense_2_layer_call_and_return_conditional_losses_50576?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_1_layer_call_fn_50581
)__inference_dropout_1_layer_call_fn_50586?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_1_layer_call_and_return_conditional_losses_50591
D__inference_dropout_1_layer_call_and_return_conditional_losses_50603?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
%__inference_dense_layer_call_fn_50612?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
@__inference_dense_layer_call_and_return_conditional_losses_50623?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
:2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
:__inference_CNN_emotion_classification_layer_call_fn_48799text_vectorization_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_CNN_emotion_classification_layer_call_fn_49854inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_CNN_emotion_classification_layer_call_fn_49885inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_CNN_emotion_classification_layer_call_fn_49252text_vectorization_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50165inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50459inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49518text_vectorization_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49784text_vectorization_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
#__inference_signature_wrapper_49823text_vectorization_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
O
?_create_resource
?_initialize
?_destroy_resourceR Z

 ??
?B?
__inference_adapt_step_35304iterator"?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_embedding_layer_layer_call_fn_50466inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_50475inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_conv1d_layer_call_fn_50484inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_conv1d_layer_call_and_return_conditional_losses_50500inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
8__inference_global_average_pooling1d_layer_call_fn_50505inputs"?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_50511inputs"?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dense_1_layer_call_fn_50520inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dense_1_layer_call_and_return_conditional_losses_50530inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dropout_layer_call_fn_50535inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_dropout_layer_call_fn_50540inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_50545inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_50557inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dense_2_layer_call_fn_50566inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dense_2_layer_call_and_return_conditional_losses_50576inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_dropout_1_layer_call_fn_50581inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_1_layer_call_fn_50586inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_50591inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_50603inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_dense_layer_call_fn_50612inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_dense_layer_call_and_return_conditional_losses_50623inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
?
?trace_02?
__inference__creator_50628?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_50636?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_50641?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__creator_50646?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_50651?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_50656?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
?B?
__inference__creator_50628"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_50636"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_50641"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_50646"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_50651"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_50656"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
3:1
?? 2!Adam/embedding_layer/embeddings/m
(:&  2Adam/conv1d/kernel/m
: 2Adam/conv1d/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
%:#2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
#:!2Adam/dense/kernel/m
:2Adam/dense/bias/m
3:1
?? 2!Adam/embedding_layer/embeddings/v
(:&  2Adam/conv1d/kernel/v
: 2Adam/conv1d/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
%:#2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
#:!2Adam/dense/kernel/v
:2Adam/dense/bias/v
?B?
__inference_save_fn_50675checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_50683restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49518?f???#$23ABPQE?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "%?"
?
0?????????
? ?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_49784?f???#$23ABPQE?B
;?8
.?+
text_vectorization_input?????????
p

 
? "%?"
?
0?????????
? ?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50165nf???#$23ABPQ3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
U__inference_CNN_emotion_classification_layer_call_and_return_conditional_losses_50459nf???#$23ABPQ3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
:__inference_CNN_emotion_classification_layer_call_fn_48799sf???#$23ABPQE?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "???????????
:__inference_CNN_emotion_classification_layer_call_fn_49252sf???#$23ABPQE?B
;?8
.?+
text_vectorization_input?????????
p

 
? "???????????
:__inference_CNN_emotion_classification_layer_call_fn_49854af???#$23ABPQ3?0
)?&
?
inputs?????????
p 

 
? "???????????
:__inference_CNN_emotion_classification_layer_call_fn_49885af???#$23ABPQ3?0
)?&
?
inputs?????????
p

 
? "??????????6
__inference__creator_50628?

? 
? "? 6
__inference__creator_50646?

? 
? "? 8
__inference__destroyer_50641?

? 
? "? 8
__inference__destroyer_50656?

? 
? "? A
__inference__initializer_50636f???

? 
? "? :
__inference__initializer_50651?

? 
? "? ?
 __inference__wrapped_model_48414?f???#$23ABPQ=?:
3?0
.?+
text_vectorization_input?????????
? "-?*
(
dense?
dense?????????a
__inference_adapt_step_35304Ag?6?3
,?)
'?$?
? IteratorSpec 
? "
 ?
A__inference_conv1d_layer_call_and_return_conditional_losses_50500d#$3?0
)?&
$?!
inputs?????????@ 
? ")?&
?
0?????????= 
? ?
&__inference_conv1d_layer_call_fn_50484W#$3?0
)?&
$?!
inputs?????????@ 
? "??????????= ?
B__inference_dense_1_layer_call_and_return_conditional_losses_50530\23/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_50520O23/?,
%?"
 ?
inputs????????? 
? "???????????
B__inference_dense_2_layer_call_and_return_conditional_losses_50576\AB/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_2_layer_call_fn_50566OAB/?,
%?"
 ?
inputs?????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_50623\PQ/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? x
%__inference_dense_layer_call_fn_50612OPQ/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_50591\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_50603\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? |
)__inference_dropout_1_layer_call_fn_50581O3?0
)?&
 ?
inputs?????????
p 
? "??????????|
)__inference_dropout_1_layer_call_fn_50586O3?0
)?&
 ?
inputs?????????
p
? "???????????
B__inference_dropout_layer_call_and_return_conditional_losses_50545\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_50557\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? z
'__inference_dropout_layer_call_fn_50535O3?0
)?&
 ?
inputs?????????
p 
? "??????????z
'__inference_dropout_layer_call_fn_50540O3?0
)?&
 ?
inputs?????????
p
? "???????????
J__inference_embedding_layer_layer_call_and_return_conditional_losses_50475_/?,
%?"
 ?
inputs?????????@	
? ")?&
?
0?????????@ 
? ?
/__inference_embedding_layer_layer_call_fn_50466R/?,
%?"
 ?
inputs?????????@	
? "??????????@ ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_50511{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_50505nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????y
__inference_restore_fn_50683YgK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_50675?g&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_49823?f???#$23ABPQY?V
? 
O?L
J
text_vectorization_input.?+
text_vectorization_input?????????"-?*
(
dense?
dense?????????