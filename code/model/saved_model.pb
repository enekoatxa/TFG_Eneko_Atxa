��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
d
mean_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_1
]
mean_1/Read/ReadVariableOpReadVariableOpmean_1*
_output_shapes
:*
dtype0
l

variance_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_1
e
variance_1/Read/ReadVariableOpReadVariableOp
variance_1*
_output_shapes
:*
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0	
d
mean_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_2
]
mean_2/Read/ReadVariableOpReadVariableOpmean_2*
_output_shapes
:*
dtype0
l

variance_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_2
e
variance_2/Read/ReadVariableOpReadVariableOp
variance_2*
_output_shapes
:*
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0	
d
mean_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_3
]
mean_3/Read/ReadVariableOpReadVariableOpmean_3*
_output_shapes
:*
dtype0
l

variance_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_3
e
variance_3/Read/ReadVariableOpReadVariableOp
variance_3*
_output_shapes
:*
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0	
d
mean_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_4
]
mean_4/Read/ReadVariableOpReadVariableOpmean_4*
_output_shapes
:*
dtype0
l

variance_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_4
e
variance_4/Read/ReadVariableOpReadVariableOp
variance_4*
_output_shapes
:*
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0	
d
mean_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_5
]
mean_5/Read/ReadVariableOpReadVariableOpmean_5*
_output_shapes
:*
dtype0
l

variance_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_5
e
variance_5/Read/ReadVariableOpReadVariableOp
variance_5*
_output_shapes
:*
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0	
d
mean_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_6
]
mean_6/Read/ReadVariableOpReadVariableOpmean_6*
_output_shapes
:*
dtype0
l

variance_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_6
e
variance_6/Read/ReadVariableOpReadVariableOp
variance_6*
_output_shapes
:*
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0	
d
mean_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_7
]
mean_7/Read/ReadVariableOpReadVariableOpmean_7*
_output_shapes
:*
dtype0
l

variance_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_7
e
variance_7/Read/ReadVariableOpReadVariableOp
variance_7*
_output_shapes
:*
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0	
d
mean_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_8
]
mean_8/Read/ReadVariableOpReadVariableOpmean_8*
_output_shapes
:*
dtype0
l

variance_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_8
e
variance_8/Read/ReadVariableOpReadVariableOp
variance_8*
_output_shapes
:*
dtype0
b
count_8VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_8
[
count_8/Read/ReadVariableOpReadVariableOpcount_8*
_output_shapes
: *
dtype0	
d
mean_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_9
]
mean_9/Read/ReadVariableOpReadVariableOpmean_9*
_output_shapes
:*
dtype0
l

variance_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_9
e
variance_9/Read/ReadVariableOpReadVariableOp
variance_9*
_output_shapes
:*
dtype0
b
count_9VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_9
[
count_9/Read/ReadVariableOpReadVariableOpcount_9*
_output_shapes
: *
dtype0	
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:
 *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
d
count_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_10
]
count_10/Read/ReadVariableOpReadVariableOpcount_10*
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
d
count_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_11
]
count_11/Read/ReadVariableOpReadVariableOpcount_11*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:
 *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:
 *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�H
value�HB�H B�H
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-0
layer-10
layer_with_weights-1
layer-11
layer_with_weights-2
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
 
 
 
 
 
 
 
 
 
]
state_variables
 _broadcast_shape
!mean
"variance
	#count
$	keras_api
]
%state_variables
&_broadcast_shape
'mean
(variance
	)count
*	keras_api
]
+state_variables
,_broadcast_shape
-mean
.variance
	/count
0	keras_api
]
1state_variables
2_broadcast_shape
3mean
4variance
	5count
6	keras_api
]
7state_variables
8_broadcast_shape
9mean
:variance
	;count
<	keras_api
]
=state_variables
>_broadcast_shape
?mean
@variance
	Acount
B	keras_api
]
Cstate_variables
D_broadcast_shape
Emean
Fvariance
	Gcount
H	keras_api
]
Istate_variables
J_broadcast_shape
Kmean
Lvariance
	Mcount
N	keras_api
]
Ostate_variables
P_broadcast_shape
Qmean
Rvariance
	Scount
T	keras_api
]
Ustate_variables
V_broadcast_shape
Wmean
Xvariance
	Ycount
Z	keras_api
R
[trainable_variables
\	variables
]regularization_losses
^	keras_api
h

_kernel
`bias
atrainable_variables
b	variables
cregularization_losses
d	keras_api
R
etrainable_variables
f	variables
gregularization_losses
h	keras_api
h

ikernel
jbias
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
�
oiter

pbeta_1

qbeta_2
	rdecay
slearning_rate_m�`m�im�jm�_v�`v�iv�jv�

_0
`1
i2
j3
�
!0
"1
#2
'3
(4
)5
-6
.7
/8
39
410
511
912
:13
;14
?15
@16
A17
E18
F19
G20
K21
L22
M23
Q24
R25
S26
W27
X28
Y29
_30
`31
i32
j33
 
�
tlayer_metrics
trainable_variables
umetrics
	variables

vlayers
wlayer_regularization_losses
xnon_trainable_variables
regularization_losses
 
#
!mean
"variance
	#count
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
'mean
(variance
	)count
 
PN
VARIABLE_VALUEmean_14layer_with_weights-1/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_18layer_with_weights-1/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_15layer_with_weights-1/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
-mean
.variance
	/count
 
PN
VARIABLE_VALUEmean_24layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_28layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_25layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
3mean
4variance
	5count
 
PN
VARIABLE_VALUEmean_34layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_38layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_35layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
9mean
:variance
	;count
 
PN
VARIABLE_VALUEmean_44layer_with_weights-4/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_48layer_with_weights-4/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_45layer_with_weights-4/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
?mean
@variance
	Acount
 
PN
VARIABLE_VALUEmean_54layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_58layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_55layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
Emean
Fvariance
	Gcount
 
PN
VARIABLE_VALUEmean_64layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_68layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_65layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
Kmean
Lvariance
	Mcount
 
PN
VARIABLE_VALUEmean_74layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_78layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_75layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
Qmean
Rvariance
	Scount
 
PN
VARIABLE_VALUEmean_84layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_88layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_85layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUE
 
#
Wmean
Xvariance
	Ycount
 
PN
VARIABLE_VALUEmean_94layer_with_weights-9/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_98layer_with_weights-9/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_95layer_with_weights-9/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
�
ylayer_metrics
[trainable_variables
zmetrics
\	variables

{layers
|layer_regularization_losses
}non_trainable_variables
]regularization_losses
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1

_0
`1
 
�
~layer_metrics
atrainable_variables
metrics
b	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
cregularization_losses
 
 
 
�
�layer_metrics
etrainable_variables
�metrics
f	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
gregularization_losses
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

i0
j1

i0
j1
 
�
�layer_metrics
ktrainable_variables
�metrics
l	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
mregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 
�
!0
"1
#2
'3
(4
)5
-6
.7
/8
39
410
511
912
:13
;14
?15
@16
A17
E18
F19
G20
K21
L22
M23
Q24
R25
S26
W27
X28
Y29
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_104keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_114keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
w
serving_default_ang1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
x
serving_default_ang10Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang3Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang4Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang5Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang6Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang7Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang8Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_ang9Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_ang1serving_default_ang10serving_default_ang2serving_default_ang3serving_default_ang4serving_default_ang5serving_default_ang6serving_default_ang7serving_default_ang8serving_default_ang9meanvariancemean_1
variance_1mean_2
variance_2mean_3
variance_3mean_4
variance_4mean_5
variance_5mean_6
variance_6mean_7
variance_7mean_8
variance_8mean_9
variance_9dense/kernel
dense/biasdense_1/kerneldense_1/bias*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_85450
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOpmean_1/Read/ReadVariableOpvariance_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpmean_2/Read/ReadVariableOpvariance_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpmean_3/Read/ReadVariableOpvariance_3/Read/ReadVariableOpcount_3/Read/ReadVariableOpmean_4/Read/ReadVariableOpvariance_4/Read/ReadVariableOpcount_4/Read/ReadVariableOpmean_5/Read/ReadVariableOpvariance_5/Read/ReadVariableOpcount_5/Read/ReadVariableOpmean_6/Read/ReadVariableOpvariance_6/Read/ReadVariableOpcount_6/Read/ReadVariableOpmean_7/Read/ReadVariableOpvariance_7/Read/ReadVariableOpcount_7/Read/ReadVariableOpmean_8/Read/ReadVariableOpvariance_8/Read/ReadVariableOpcount_8/Read/ReadVariableOpmean_9/Read/ReadVariableOpvariance_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_10/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_11/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*@
Tin9
725											*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_86182
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountmean_1
variance_1count_1mean_2
variance_2count_2mean_3
variance_3count_3mean_4
variance_4count_4mean_5
variance_5count_5mean_6
variance_6count_6mean_7
variance_7count_7mean_8
variance_8count_8mean_9
variance_9count_9dense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_10total_1count_11Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*?
Tin8
624*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_86345��
�
�
F__inference_concatenate_layer_call_and_return_conditional_losses_85916
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
��
�
@__inference_model_layer_call_and_return_conditional_losses_85777
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_91
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubinputs_0normalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubinputs_1 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubinputs_2 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs_3 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubinputs_4 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubinputs_5 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubinputs_6 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubinputs_7 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubinputs_8 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubinputs_9 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truedivt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis�
concatenate/concatConcatV2normalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0 concatenate/concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
2
concatenate/concat�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

dense/Relu|
dropout/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_1/Sigmoid�
IdentityIdentitydense_1/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
�
C
'__inference_dropout_layer_call_fn_85977

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847472
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_85901
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_853272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_85967

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
z
%__inference_dense_layer_call_fn_85950

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_847142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_85941

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_84788
ang1
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9	
ang101
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource
dense_84725
dense_84727
dense_1_84782
dense_1_84784
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubang1normalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubang2 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubang3 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubang4 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubang5 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubang6 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubang7 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubang8 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubang9 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubang10 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truediv�
concatenate/PartitionedCallPartitionedCallnormalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_846862
concatenate/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_84725dense_84727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_847142
dense/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847422!
dropout/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_84782dense_1_84784*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847712!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:M I
'
_output_shapes
:���������

_user_specified_nameang1:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:MI
'
_output_shapes
:���������

_user_specified_nameang9:N	J
'
_output_shapes
:���������

_user_specified_nameang10
�[
�
__inference__traced_save_86182
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	%
!savev2_mean_1_read_readvariableop)
%savev2_variance_1_read_readvariableop&
"savev2_count_1_read_readvariableop	%
!savev2_mean_2_read_readvariableop)
%savev2_variance_2_read_readvariableop&
"savev2_count_2_read_readvariableop	%
!savev2_mean_3_read_readvariableop)
%savev2_variance_3_read_readvariableop&
"savev2_count_3_read_readvariableop	%
!savev2_mean_4_read_readvariableop)
%savev2_variance_4_read_readvariableop&
"savev2_count_4_read_readvariableop	%
!savev2_mean_5_read_readvariableop)
%savev2_variance_5_read_readvariableop&
"savev2_count_5_read_readvariableop	%
!savev2_mean_6_read_readvariableop)
%savev2_variance_6_read_readvariableop&
"savev2_count_6_read_readvariableop	%
!savev2_mean_7_read_readvariableop)
%savev2_variance_7_read_readvariableop&
"savev2_count_7_read_readvariableop	%
!savev2_mean_8_read_readvariableop)
%savev2_variance_8_read_readvariableop&
"savev2_count_8_read_readvariableop	%
!savev2_mean_9_read_readvariableop)
%savev2_variance_9_read_readvariableop&
"savev2_count_9_read_readvariableop	+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop'
#savev2_count_10_read_readvariableop&
"savev2_total_1_read_readvariableop'
#savev2_count_11_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-1/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-4/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-9/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop!savev2_mean_1_read_readvariableop%savev2_variance_1_read_readvariableop"savev2_count_1_read_readvariableop!savev2_mean_2_read_readvariableop%savev2_variance_2_read_readvariableop"savev2_count_2_read_readvariableop!savev2_mean_3_read_readvariableop%savev2_variance_3_read_readvariableop"savev2_count_3_read_readvariableop!savev2_mean_4_read_readvariableop%savev2_variance_4_read_readvariableop"savev2_count_4_read_readvariableop!savev2_mean_5_read_readvariableop%savev2_variance_5_read_readvariableop"savev2_count_5_read_readvariableop!savev2_mean_6_read_readvariableop%savev2_variance_6_read_readvariableop"savev2_count_6_read_readvariableop!savev2_mean_7_read_readvariableop%savev2_variance_7_read_readvariableop"savev2_count_7_read_readvariableop!savev2_mean_8_read_readvariableop%savev2_variance_8_read_readvariableop"savev2_count_8_read_readvariableop!savev2_mean_9_read_readvariableop%savev2_variance_9_read_readvariableop"savev2_count_9_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop#savev2_count_10_read_readvariableop"savev2_total_1_read_readvariableop#savev2_count_11_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624											2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: ::: ::: ::: ::: ::: ::: ::: ::: ::: :
 : : :: : : : : : : : : :
 : : ::
 : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::	

_output_shapes
: : 


_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:
 :  

_output_shapes
: :$! 

_output_shapes

: : "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :$, 

_output_shapes

:
 : -

_output_shapes
: :$. 

_output_shapes

: : /

_output_shapes
::$0 

_output_shapes

:
 : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
::4

_output_shapes
: 
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_84742

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_85327

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_91
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource
dense_85315
dense_85317
dense_1_85321
dense_1_85323
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubinputsnormalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubinputs_1 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubinputs_2 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs_3 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubinputs_4 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubinputs_5 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubinputs_6 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubinputs_7 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubinputs_8 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubinputs_9 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truediv�
concatenate/PartitionedCallPartitionedCallnormalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_846862
concatenate/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_85315dense_85317*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_847142
dense/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847472
dropout/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_85321dense_1_85323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847712!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O	K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_84714

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_85972

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847422
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_85450
ang1	
ang10
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallang1ang2ang3ang4ang5ang6ang7ang8ang9ang10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_845282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameang1:NJ
'
_output_shapes
:���������

_user_specified_nameang10:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:M	I
'
_output_shapes
:���������

_user_specified_nameang9
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_84747

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
F__inference_concatenate_layer_call_and_return_conditional_losses_84686

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O	K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_85161
ang1
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9	
ang10
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallang1ang2ang3ang4ang5ang6ang7ang8ang9ang10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_851102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameang1:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:MI
'
_output_shapes
:���������

_user_specified_nameang9:N	J
'
_output_shapes
:���������

_user_specified_nameang10
�
�
%__inference_model_layer_call_fn_85378
ang1
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9	
ang10
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallang1ang2ang3ang4ang5ang6ang7ang8ang9ang10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_853272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameang1:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:MI
'
_output_shapes
:���������

_user_specified_nameang9:N	J
'
_output_shapes
:���������

_user_specified_nameang10
��
�
@__inference_model_layer_call_and_return_conditional_losses_85617
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_91
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubinputs_0normalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubinputs_1 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubinputs_2 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs_3 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubinputs_4 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubinputs_5 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubinputs_6 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubinputs_7 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubinputs_8 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubinputs_9 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truedivt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis�
concatenate/concatConcatV2normalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0 concatenate/concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
2
concatenate/concat�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:
 *
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

dense/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const�
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout/dropout/Mulv
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_1/Sigmoid�
IdentityIdentitydense_1/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
��
�
!__inference__traced_restore_86345
file_prefix
assignvariableop_mean
assignvariableop_1_variance
assignvariableop_2_count
assignvariableop_3_mean_1!
assignvariableop_4_variance_1
assignvariableop_5_count_1
assignvariableop_6_mean_2!
assignvariableop_7_variance_2
assignvariableop_8_count_2
assignvariableop_9_mean_3"
assignvariableop_10_variance_3
assignvariableop_11_count_3
assignvariableop_12_mean_4"
assignvariableop_13_variance_4
assignvariableop_14_count_4
assignvariableop_15_mean_5"
assignvariableop_16_variance_5
assignvariableop_17_count_5
assignvariableop_18_mean_6"
assignvariableop_19_variance_6
assignvariableop_20_count_6
assignvariableop_21_mean_7"
assignvariableop_22_variance_7
assignvariableop_23_count_7
assignvariableop_24_mean_8"
assignvariableop_25_variance_8
assignvariableop_26_count_8
assignvariableop_27_mean_9"
assignvariableop_28_variance_9
assignvariableop_29_count_9$
 assignvariableop_30_dense_kernel"
assignvariableop_31_dense_bias&
"assignvariableop_32_dense_1_kernel$
 assignvariableop_33_dense_1_bias!
assignvariableop_34_adam_iter#
assignvariableop_35_adam_beta_1#
assignvariableop_36_adam_beta_2"
assignvariableop_37_adam_decay*
&assignvariableop_38_adam_learning_rate
assignvariableop_39_total 
assignvariableop_40_count_10
assignvariableop_41_total_1 
assignvariableop_42_count_11+
'assignvariableop_43_adam_dense_kernel_m)
%assignvariableop_44_adam_dense_bias_m-
)assignvariableop_45_adam_dense_1_kernel_m+
'assignvariableop_46_adam_dense_1_bias_m+
'assignvariableop_47_adam_dense_kernel_v)
%assignvariableop_48_adam_dense_bias_v-
)assignvariableop_49_adam_dense_1_kernel_v+
'assignvariableop_50_adam_dense_1_bias_v
identity_52��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-1/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-4/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-9/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624											2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_mean_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variance_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_count_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_mean_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variance_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_mean_3Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variance_3Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_3Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_mean_4Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variance_4Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_4Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_mean_5Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variance_5Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_5Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_mean_6Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variance_6Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_6Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_mean_7Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variance_7Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_7Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpassignvariableop_24_mean_8Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variance_8Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_8Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpassignvariableop_27_mean_9Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variance_9Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_9Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpassignvariableop_31_dense_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_1_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_1_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_10Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_11Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_dense_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_dense_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51�	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
+__inference_concatenate_layer_call_fn_85930
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_846862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
�
�
%__inference_model_layer_call_fn_85839
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs

 !*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_851102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:���������
"
_user_specified_name
inputs/9
�	
�
B__inference_dense_1_layer_call_and_return_conditional_losses_84771

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_85110

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_91
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource
dense_85098
dense_85100
dense_1_85104
dense_1_85106
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubinputsnormalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubinputs_1 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubinputs_2 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs_3 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubinputs_4 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubinputs_5 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubinputs_6 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubinputs_7 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubinputs_8 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubinputs_9 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truediv�
concatenate/PartitionedCallPartitionedCallnormalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_846862
concatenate/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_85098dense_85100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_847142
dense/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847422!
dropout/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_85104dense_1_85106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847712!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O	K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
B__inference_dense_1_layer_call_and_return_conditional_losses_85988

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
|
'__inference_dense_1_layer_call_fn_85997

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_84943
ang1
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9	
ang101
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource3
/normalization_2_reshape_readvariableop_resource5
1normalization_2_reshape_1_readvariableop_resource3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource3
/normalization_5_reshape_readvariableop_resource5
1normalization_5_reshape_1_readvariableop_resource3
/normalization_6_reshape_readvariableop_resource5
1normalization_6_reshape_1_readvariableop_resource3
/normalization_7_reshape_readvariableop_resource5
1normalization_7_reshape_1_readvariableop_resource3
/normalization_8_reshape_readvariableop_resource5
1normalization_8_reshape_1_readvariableop_resource3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource
dense_84931
dense_84933
dense_1_84937
dense_1_84939
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�$normalization/Reshape/ReadVariableOp�&normalization/Reshape_1/ReadVariableOp�&normalization_1/Reshape/ReadVariableOp�(normalization_1/Reshape_1/ReadVariableOp�&normalization_2/Reshape/ReadVariableOp�(normalization_2/Reshape_1/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�&normalization_4/Reshape/ReadVariableOp�(normalization_4/Reshape_1/ReadVariableOp�&normalization_5/Reshape/ReadVariableOp�(normalization_5/Reshape_1/ReadVariableOp�&normalization_6/Reshape/ReadVariableOp�(normalization_6/Reshape_1/ReadVariableOp�&normalization_7/Reshape/ReadVariableOp�(normalization_7/Reshape_1/ReadVariableOp�&normalization_8/Reshape/ReadVariableOp�(normalization_8/Reshape_1/ReadVariableOp�&normalization_9/Reshape/ReadVariableOp�(normalization_9/Reshape_1/ReadVariableOp�
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOp�
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape/shape�
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape�
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOp�
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization/Reshape_1/shape�
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization/Reshape_1�
normalization/subSubang1normalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization/sub{
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization/Maximum/y�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization/Maximum�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization/truediv�
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp�
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape�
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape�
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp�
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape�
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1�
normalization_1/subSubang2 normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_1/sub�
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_1/Maximum/y�
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum�
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_1/truediv�
&normalization_2/Reshape/ReadVariableOpReadVariableOp/normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_2/Reshape/ReadVariableOp�
normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_2/Reshape/shape�
normalization_2/ReshapeReshape.normalization_2/Reshape/ReadVariableOp:value:0&normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape�
(normalization_2/Reshape_1/ReadVariableOpReadVariableOp1normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_2/Reshape_1/ReadVariableOp�
normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_2/Reshape_1/shape�
normalization_2/Reshape_1Reshape0normalization_2/Reshape_1/ReadVariableOp:value:0(normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_2/Reshape_1�
normalization_2/subSubang3 normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_2/sub�
normalization_2/SqrtSqrt"normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_2/Sqrt{
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_2/Maximum/y�
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_2/Maximum�
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_2/truediv�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubang4 normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp�
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape�
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape�
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp�
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape�
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1�
normalization_4/subSubang5 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_4/sub�
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_4/Maximum/y�
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum�
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_4/truediv�
&normalization_5/Reshape/ReadVariableOpReadVariableOp/normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_5/Reshape/ReadVariableOp�
normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_5/Reshape/shape�
normalization_5/ReshapeReshape.normalization_5/Reshape/ReadVariableOp:value:0&normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape�
(normalization_5/Reshape_1/ReadVariableOpReadVariableOp1normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_5/Reshape_1/ReadVariableOp�
normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_5/Reshape_1/shape�
normalization_5/Reshape_1Reshape0normalization_5/Reshape_1/ReadVariableOp:value:0(normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_5/Reshape_1�
normalization_5/subSubang6 normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_5/sub�
normalization_5/SqrtSqrt"normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_5/Sqrt{
normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_5/Maximum/y�
normalization_5/MaximumMaximumnormalization_5/Sqrt:y:0"normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_5/Maximum�
normalization_5/truedivRealDivnormalization_5/sub:z:0normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_5/truediv�
&normalization_6/Reshape/ReadVariableOpReadVariableOp/normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_6/Reshape/ReadVariableOp�
normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_6/Reshape/shape�
normalization_6/ReshapeReshape.normalization_6/Reshape/ReadVariableOp:value:0&normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape�
(normalization_6/Reshape_1/ReadVariableOpReadVariableOp1normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_6/Reshape_1/ReadVariableOp�
normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_6/Reshape_1/shape�
normalization_6/Reshape_1Reshape0normalization_6/Reshape_1/ReadVariableOp:value:0(normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_6/Reshape_1�
normalization_6/subSubang7 normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_6/sub�
normalization_6/SqrtSqrt"normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_6/Sqrt{
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_6/Maximum/y�
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_6/Maximum�
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_6/truediv�
&normalization_7/Reshape/ReadVariableOpReadVariableOp/normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_7/Reshape/ReadVariableOp�
normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_7/Reshape/shape�
normalization_7/ReshapeReshape.normalization_7/Reshape/ReadVariableOp:value:0&normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape�
(normalization_7/Reshape_1/ReadVariableOpReadVariableOp1normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_7/Reshape_1/ReadVariableOp�
normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_7/Reshape_1/shape�
normalization_7/Reshape_1Reshape0normalization_7/Reshape_1/ReadVariableOp:value:0(normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_7/Reshape_1�
normalization_7/subSubang8 normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_7/sub�
normalization_7/SqrtSqrt"normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_7/Sqrt{
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_7/Maximum/y�
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_7/Maximum�
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_7/truediv�
&normalization_8/Reshape/ReadVariableOpReadVariableOp/normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_8/Reshape/ReadVariableOp�
normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_8/Reshape/shape�
normalization_8/ReshapeReshape.normalization_8/Reshape/ReadVariableOp:value:0&normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape�
(normalization_8/Reshape_1/ReadVariableOpReadVariableOp1normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_8/Reshape_1/ReadVariableOp�
normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_8/Reshape_1/shape�
normalization_8/Reshape_1Reshape0normalization_8/Reshape_1/ReadVariableOp:value:0(normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_8/Reshape_1�
normalization_8/subSubang9 normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_8/sub�
normalization_8/SqrtSqrt"normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_8/Sqrt{
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_8/Maximum/y�
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_8/Maximum�
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_8/truediv�
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_9/Reshape/ReadVariableOp�
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_9/Reshape/shape�
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape�
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_9/Reshape_1/ReadVariableOp�
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_9/Reshape_1/shape�
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_9/Reshape_1�
normalization_9/subSubang10 normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_9/sub�
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_9/Maximum/y�
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_9/Maximum�
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_9/truediv�
concatenate/PartitionedCallPartitionedCallnormalization/truediv:z:0normalization_1/truediv:z:0normalization_2/truediv:z:0normalization_3/truediv:z:0normalization_4/truediv:z:0normalization_5/truediv:z:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_846862
concatenate/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_84931dense_84933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_847142
dense/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_847472
dropout/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_84937dense_1_84939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847712!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp'^normalization_2/Reshape/ReadVariableOp)^normalization_2/Reshape_1/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp'^normalization_5/Reshape/ReadVariableOp)^normalization_5/Reshape_1/ReadVariableOp'^normalization_6/Reshape/ReadVariableOp)^normalization_6/Reshape_1/ReadVariableOp'^normalization_7/Reshape/ReadVariableOp)^normalization_7/Reshape_1/ReadVariableOp'^normalization_8/Reshape/ReadVariableOp)^normalization_8/Reshape_1/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp2P
&normalization_2/Reshape/ReadVariableOp&normalization_2/Reshape/ReadVariableOp2T
(normalization_2/Reshape_1/ReadVariableOp(normalization_2/Reshape_1/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2P
&normalization_5/Reshape/ReadVariableOp&normalization_5/Reshape/ReadVariableOp2T
(normalization_5/Reshape_1/ReadVariableOp(normalization_5/Reshape_1/ReadVariableOp2P
&normalization_6/Reshape/ReadVariableOp&normalization_6/Reshape/ReadVariableOp2T
(normalization_6/Reshape_1/ReadVariableOp(normalization_6/Reshape_1/ReadVariableOp2P
&normalization_7/Reshape/ReadVariableOp&normalization_7/Reshape/ReadVariableOp2T
(normalization_7/Reshape_1/ReadVariableOp(normalization_7/Reshape_1/ReadVariableOp2P
&normalization_8/Reshape/ReadVariableOp&normalization_8/Reshape/ReadVariableOp2T
(normalization_8/Reshape_1/ReadVariableOp(normalization_8/Reshape_1/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:M I
'
_output_shapes
:���������

_user_specified_nameang1:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:MI
'
_output_shapes
:���������

_user_specified_nameang9:N	J
'
_output_shapes
:���������

_user_specified_nameang10
��
�
 __inference__wrapped_model_84528
ang1
ang2
ang3
ang4
ang5
ang6
ang7
ang8
ang9	
ang107
3model_normalization_reshape_readvariableop_resource9
5model_normalization_reshape_1_readvariableop_resource9
5model_normalization_1_reshape_readvariableop_resource;
7model_normalization_1_reshape_1_readvariableop_resource9
5model_normalization_2_reshape_readvariableop_resource;
7model_normalization_2_reshape_1_readvariableop_resource9
5model_normalization_3_reshape_readvariableop_resource;
7model_normalization_3_reshape_1_readvariableop_resource9
5model_normalization_4_reshape_readvariableop_resource;
7model_normalization_4_reshape_1_readvariableop_resource9
5model_normalization_5_reshape_readvariableop_resource;
7model_normalization_5_reshape_1_readvariableop_resource9
5model_normalization_6_reshape_readvariableop_resource;
7model_normalization_6_reshape_1_readvariableop_resource9
5model_normalization_7_reshape_readvariableop_resource;
7model_normalization_7_reshape_1_readvariableop_resource9
5model_normalization_8_reshape_readvariableop_resource;
7model_normalization_8_reshape_1_readvariableop_resource9
5model_normalization_9_reshape_readvariableop_resource;
7model_normalization_9_reshape_1_readvariableop_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource0
,model_dense_1_matmul_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�*model/normalization/Reshape/ReadVariableOp�,model/normalization/Reshape_1/ReadVariableOp�,model/normalization_1/Reshape/ReadVariableOp�.model/normalization_1/Reshape_1/ReadVariableOp�,model/normalization_2/Reshape/ReadVariableOp�.model/normalization_2/Reshape_1/ReadVariableOp�,model/normalization_3/Reshape/ReadVariableOp�.model/normalization_3/Reshape_1/ReadVariableOp�,model/normalization_4/Reshape/ReadVariableOp�.model/normalization_4/Reshape_1/ReadVariableOp�,model/normalization_5/Reshape/ReadVariableOp�.model/normalization_5/Reshape_1/ReadVariableOp�,model/normalization_6/Reshape/ReadVariableOp�.model/normalization_6/Reshape_1/ReadVariableOp�,model/normalization_7/Reshape/ReadVariableOp�.model/normalization_7/Reshape_1/ReadVariableOp�,model/normalization_8/Reshape/ReadVariableOp�.model/normalization_8/Reshape_1/ReadVariableOp�,model/normalization_9/Reshape/ReadVariableOp�.model/normalization_9/Reshape_1/ReadVariableOp�
*model/normalization/Reshape/ReadVariableOpReadVariableOp3model_normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/normalization/Reshape/ReadVariableOp�
!model/normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!model/normalization/Reshape/shape�
model/normalization/ReshapeReshape2model/normalization/Reshape/ReadVariableOp:value:0*model/normalization/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization/Reshape�
,model/normalization/Reshape_1/ReadVariableOpReadVariableOp5model_normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization/Reshape_1/ReadVariableOp�
#model/normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization/Reshape_1/shape�
model/normalization/Reshape_1Reshape4model/normalization/Reshape_1/ReadVariableOp:value:0,model/normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
model/normalization/Reshape_1�
model/normalization/subSubang1$model/normalization/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization/sub�
model/normalization/SqrtSqrt&model/normalization/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization/Sqrt�
model/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
model/normalization/Maximum/y�
model/normalization/MaximumMaximummodel/normalization/Sqrt:y:0&model/normalization/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization/Maximum�
model/normalization/truedivRealDivmodel/normalization/sub:z:0model/normalization/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization/truediv�
,model/normalization_1/Reshape/ReadVariableOpReadVariableOp5model_normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_1/Reshape/ReadVariableOp�
#model/normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_1/Reshape/shape�
model/normalization_1/ReshapeReshape4model/normalization_1/Reshape/ReadVariableOp:value:0,model/normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_1/Reshape�
.model/normalization_1/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_1/Reshape_1/ReadVariableOp�
%model/normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_1/Reshape_1/shape�
model/normalization_1/Reshape_1Reshape6model/normalization_1/Reshape_1/ReadVariableOp:value:0.model/normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_1/Reshape_1�
model/normalization_1/subSubang2&model/normalization_1/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_1/sub�
model/normalization_1/SqrtSqrt(model/normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_1/Sqrt�
model/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_1/Maximum/y�
model/normalization_1/MaximumMaximummodel/normalization_1/Sqrt:y:0(model/normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_1/Maximum�
model/normalization_1/truedivRealDivmodel/normalization_1/sub:z:0!model/normalization_1/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_1/truediv�
,model/normalization_2/Reshape/ReadVariableOpReadVariableOp5model_normalization_2_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_2/Reshape/ReadVariableOp�
#model/normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_2/Reshape/shape�
model/normalization_2/ReshapeReshape4model/normalization_2/Reshape/ReadVariableOp:value:0,model/normalization_2/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_2/Reshape�
.model/normalization_2/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_2/Reshape_1/ReadVariableOp�
%model/normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_2/Reshape_1/shape�
model/normalization_2/Reshape_1Reshape6model/normalization_2/Reshape_1/ReadVariableOp:value:0.model/normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_2/Reshape_1�
model/normalization_2/subSubang3&model/normalization_2/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_2/sub�
model/normalization_2/SqrtSqrt(model/normalization_2/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_2/Sqrt�
model/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_2/Maximum/y�
model/normalization_2/MaximumMaximummodel/normalization_2/Sqrt:y:0(model/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_2/Maximum�
model/normalization_2/truedivRealDivmodel/normalization_2/sub:z:0!model/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_2/truediv�
,model/normalization_3/Reshape/ReadVariableOpReadVariableOp5model_normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_3/Reshape/ReadVariableOp�
#model/normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_3/Reshape/shape�
model/normalization_3/ReshapeReshape4model/normalization_3/Reshape/ReadVariableOp:value:0,model/normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_3/Reshape�
.model/normalization_3/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_3/Reshape_1/ReadVariableOp�
%model/normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_3/Reshape_1/shape�
model/normalization_3/Reshape_1Reshape6model/normalization_3/Reshape_1/ReadVariableOp:value:0.model/normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_3/Reshape_1�
model/normalization_3/subSubang4&model/normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_3/sub�
model/normalization_3/SqrtSqrt(model/normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_3/Sqrt�
model/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_3/Maximum/y�
model/normalization_3/MaximumMaximummodel/normalization_3/Sqrt:y:0(model/normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_3/Maximum�
model/normalization_3/truedivRealDivmodel/normalization_3/sub:z:0!model/normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_3/truediv�
,model/normalization_4/Reshape/ReadVariableOpReadVariableOp5model_normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_4/Reshape/ReadVariableOp�
#model/normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_4/Reshape/shape�
model/normalization_4/ReshapeReshape4model/normalization_4/Reshape/ReadVariableOp:value:0,model/normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_4/Reshape�
.model/normalization_4/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_4/Reshape_1/ReadVariableOp�
%model/normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_4/Reshape_1/shape�
model/normalization_4/Reshape_1Reshape6model/normalization_4/Reshape_1/ReadVariableOp:value:0.model/normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_4/Reshape_1�
model/normalization_4/subSubang5&model/normalization_4/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_4/sub�
model/normalization_4/SqrtSqrt(model/normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_4/Sqrt�
model/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_4/Maximum/y�
model/normalization_4/MaximumMaximummodel/normalization_4/Sqrt:y:0(model/normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_4/Maximum�
model/normalization_4/truedivRealDivmodel/normalization_4/sub:z:0!model/normalization_4/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_4/truediv�
,model/normalization_5/Reshape/ReadVariableOpReadVariableOp5model_normalization_5_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_5/Reshape/ReadVariableOp�
#model/normalization_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_5/Reshape/shape�
model/normalization_5/ReshapeReshape4model/normalization_5/Reshape/ReadVariableOp:value:0,model/normalization_5/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_5/Reshape�
.model/normalization_5/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_5_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_5/Reshape_1/ReadVariableOp�
%model/normalization_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_5/Reshape_1/shape�
model/normalization_5/Reshape_1Reshape6model/normalization_5/Reshape_1/ReadVariableOp:value:0.model/normalization_5/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_5/Reshape_1�
model/normalization_5/subSubang6&model/normalization_5/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_5/sub�
model/normalization_5/SqrtSqrt(model/normalization_5/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_5/Sqrt�
model/normalization_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_5/Maximum/y�
model/normalization_5/MaximumMaximummodel/normalization_5/Sqrt:y:0(model/normalization_5/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_5/Maximum�
model/normalization_5/truedivRealDivmodel/normalization_5/sub:z:0!model/normalization_5/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_5/truediv�
,model/normalization_6/Reshape/ReadVariableOpReadVariableOp5model_normalization_6_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_6/Reshape/ReadVariableOp�
#model/normalization_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_6/Reshape/shape�
model/normalization_6/ReshapeReshape4model/normalization_6/Reshape/ReadVariableOp:value:0,model/normalization_6/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_6/Reshape�
.model/normalization_6/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_6_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_6/Reshape_1/ReadVariableOp�
%model/normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_6/Reshape_1/shape�
model/normalization_6/Reshape_1Reshape6model/normalization_6/Reshape_1/ReadVariableOp:value:0.model/normalization_6/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_6/Reshape_1�
model/normalization_6/subSubang7&model/normalization_6/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_6/sub�
model/normalization_6/SqrtSqrt(model/normalization_6/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_6/Sqrt�
model/normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_6/Maximum/y�
model/normalization_6/MaximumMaximummodel/normalization_6/Sqrt:y:0(model/normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_6/Maximum�
model/normalization_6/truedivRealDivmodel/normalization_6/sub:z:0!model/normalization_6/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_6/truediv�
,model/normalization_7/Reshape/ReadVariableOpReadVariableOp5model_normalization_7_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_7/Reshape/ReadVariableOp�
#model/normalization_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_7/Reshape/shape�
model/normalization_7/ReshapeReshape4model/normalization_7/Reshape/ReadVariableOp:value:0,model/normalization_7/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_7/Reshape�
.model/normalization_7/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_7_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_7/Reshape_1/ReadVariableOp�
%model/normalization_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_7/Reshape_1/shape�
model/normalization_7/Reshape_1Reshape6model/normalization_7/Reshape_1/ReadVariableOp:value:0.model/normalization_7/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_7/Reshape_1�
model/normalization_7/subSubang8&model/normalization_7/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_7/sub�
model/normalization_7/SqrtSqrt(model/normalization_7/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_7/Sqrt�
model/normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_7/Maximum/y�
model/normalization_7/MaximumMaximummodel/normalization_7/Sqrt:y:0(model/normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_7/Maximum�
model/normalization_7/truedivRealDivmodel/normalization_7/sub:z:0!model/normalization_7/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_7/truediv�
,model/normalization_8/Reshape/ReadVariableOpReadVariableOp5model_normalization_8_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_8/Reshape/ReadVariableOp�
#model/normalization_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_8/Reshape/shape�
model/normalization_8/ReshapeReshape4model/normalization_8/Reshape/ReadVariableOp:value:0,model/normalization_8/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_8/Reshape�
.model/normalization_8/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_8_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_8/Reshape_1/ReadVariableOp�
%model/normalization_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_8/Reshape_1/shape�
model/normalization_8/Reshape_1Reshape6model/normalization_8/Reshape_1/ReadVariableOp:value:0.model/normalization_8/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_8/Reshape_1�
model/normalization_8/subSubang9&model/normalization_8/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_8/sub�
model/normalization_8/SqrtSqrt(model/normalization_8/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_8/Sqrt�
model/normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_8/Maximum/y�
model/normalization_8/MaximumMaximummodel/normalization_8/Sqrt:y:0(model/normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_8/Maximum�
model/normalization_8/truedivRealDivmodel/normalization_8/sub:z:0!model/normalization_8/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_8/truediv�
,model/normalization_9/Reshape/ReadVariableOpReadVariableOp5model_normalization_9_reshape_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization_9/Reshape/ReadVariableOp�
#model/normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/normalization_9/Reshape/shape�
model/normalization_9/ReshapeReshape4model/normalization_9/Reshape/ReadVariableOp:value:0,model/normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:2
model/normalization_9/Reshape�
.model/normalization_9/Reshape_1/ReadVariableOpReadVariableOp7model_normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype020
.model/normalization_9/Reshape_1/ReadVariableOp�
%model/normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2'
%model/normalization_9/Reshape_1/shape�
model/normalization_9/Reshape_1Reshape6model/normalization_9/Reshape_1/ReadVariableOp:value:0.model/normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:2!
model/normalization_9/Reshape_1�
model/normalization_9/subSubang10&model/normalization_9/Reshape:output:0*
T0*'
_output_shapes
:���������2
model/normalization_9/sub�
model/normalization_9/SqrtSqrt(model/normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:2
model/normalization_9/Sqrt�
model/normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32!
model/normalization_9/Maximum/y�
model/normalization_9/MaximumMaximummodel/normalization_9/Sqrt:y:0(model/normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:2
model/normalization_9/Maximum�
model/normalization_9/truedivRealDivmodel/normalization_9/sub:z:0!model/normalization_9/Maximum:z:0*
T0*'
_output_shapes
:���������2
model/normalization_9/truediv�
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis�
model/concatenate/concatConcatV2model/normalization/truediv:z:0!model/normalization_1/truediv:z:0!model/normalization_2/truediv:z:0!model/normalization_3/truediv:z:0!model/normalization_4/truediv:z:0!model/normalization_5/truediv:z:0!model/normalization_6/truediv:z:0!model/normalization_7/truediv:z:0!model/normalization_8/truediv:z:0!model/normalization_9/truediv:z:0&model/concatenate/concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
2
model/concatenate/concat�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:
 *
dtype02#
!model/dense/MatMul/ReadVariableOp�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model/dense/MatMul�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"model/dense/BiasAdd/ReadVariableOp�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model/dense/BiasAdd|
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model/dense/Relu�
model/dropout/IdentityIdentitymodel/dense/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
model/dropout/Identity�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#model/dense_1/MatMul/ReadVariableOp�
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model/dense_1/MatMul�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model/dense_1/BiasAdd�
model/dense_1/SigmoidSigmoidmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model/dense_1/Sigmoid�	
IdentityIdentitymodel/dense_1/Sigmoid:y:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp+^model/normalization/Reshape/ReadVariableOp-^model/normalization/Reshape_1/ReadVariableOp-^model/normalization_1/Reshape/ReadVariableOp/^model/normalization_1/Reshape_1/ReadVariableOp-^model/normalization_2/Reshape/ReadVariableOp/^model/normalization_2/Reshape_1/ReadVariableOp-^model/normalization_3/Reshape/ReadVariableOp/^model/normalization_3/Reshape_1/ReadVariableOp-^model/normalization_4/Reshape/ReadVariableOp/^model/normalization_4/Reshape_1/ReadVariableOp-^model/normalization_5/Reshape/ReadVariableOp/^model/normalization_5/Reshape_1/ReadVariableOp-^model/normalization_6/Reshape/ReadVariableOp/^model/normalization_6/Reshape_1/ReadVariableOp-^model/normalization_7/Reshape/ReadVariableOp/^model/normalization_7/Reshape_1/ReadVariableOp-^model/normalization_8/Reshape/ReadVariableOp/^model/normalization_8/Reshape_1/ReadVariableOp-^model/normalization_9/Reshape/ReadVariableOp/^model/normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������::::::::::::::::::::::::2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2X
*model/normalization/Reshape/ReadVariableOp*model/normalization/Reshape/ReadVariableOp2\
,model/normalization/Reshape_1/ReadVariableOp,model/normalization/Reshape_1/ReadVariableOp2\
,model/normalization_1/Reshape/ReadVariableOp,model/normalization_1/Reshape/ReadVariableOp2`
.model/normalization_1/Reshape_1/ReadVariableOp.model/normalization_1/Reshape_1/ReadVariableOp2\
,model/normalization_2/Reshape/ReadVariableOp,model/normalization_2/Reshape/ReadVariableOp2`
.model/normalization_2/Reshape_1/ReadVariableOp.model/normalization_2/Reshape_1/ReadVariableOp2\
,model/normalization_3/Reshape/ReadVariableOp,model/normalization_3/Reshape/ReadVariableOp2`
.model/normalization_3/Reshape_1/ReadVariableOp.model/normalization_3/Reshape_1/ReadVariableOp2\
,model/normalization_4/Reshape/ReadVariableOp,model/normalization_4/Reshape/ReadVariableOp2`
.model/normalization_4/Reshape_1/ReadVariableOp.model/normalization_4/Reshape_1/ReadVariableOp2\
,model/normalization_5/Reshape/ReadVariableOp,model/normalization_5/Reshape/ReadVariableOp2`
.model/normalization_5/Reshape_1/ReadVariableOp.model/normalization_5/Reshape_1/ReadVariableOp2\
,model/normalization_6/Reshape/ReadVariableOp,model/normalization_6/Reshape/ReadVariableOp2`
.model/normalization_6/Reshape_1/ReadVariableOp.model/normalization_6/Reshape_1/ReadVariableOp2\
,model/normalization_7/Reshape/ReadVariableOp,model/normalization_7/Reshape/ReadVariableOp2`
.model/normalization_7/Reshape_1/ReadVariableOp.model/normalization_7/Reshape_1/ReadVariableOp2\
,model/normalization_8/Reshape/ReadVariableOp,model/normalization_8/Reshape/ReadVariableOp2`
.model/normalization_8/Reshape_1/ReadVariableOp.model/normalization_8/Reshape_1/ReadVariableOp2\
,model/normalization_9/Reshape/ReadVariableOp,model/normalization_9/Reshape/ReadVariableOp2`
.model/normalization_9/Reshape_1/ReadVariableOp.model/normalization_9/Reshape_1/ReadVariableOp:M I
'
_output_shapes
:���������

_user_specified_nameang1:MI
'
_output_shapes
:���������

_user_specified_nameang2:MI
'
_output_shapes
:���������

_user_specified_nameang3:MI
'
_output_shapes
:���������

_user_specified_nameang4:MI
'
_output_shapes
:���������

_user_specified_nameang5:MI
'
_output_shapes
:���������

_user_specified_nameang6:MI
'
_output_shapes
:���������

_user_specified_nameang7:MI
'
_output_shapes
:���������

_user_specified_nameang8:MI
'
_output_shapes
:���������

_user_specified_nameang9:N	J
'
_output_shapes
:���������

_user_specified_nameang10
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_85962

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
5
ang1-
serving_default_ang1:0���������
7
ang10.
serving_default_ang10:0���������
5
ang2-
serving_default_ang2:0���������
5
ang3-
serving_default_ang3:0���������
5
ang4-
serving_default_ang4:0���������
5
ang5-
serving_default_ang5:0���������
5
ang6-
serving_default_ang6:0���������
5
ang7-
serving_default_ang7:0���������
5
ang8-
serving_default_ang8:0���������
5
ang9-
serving_default_ang9:0���������;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
��
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-0
layer-10
layer_with_weights-1
layer-11
layer_with_weights-2
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"��
_tf_keras_network��{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang1"}, "name": "ang1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang2"}, "name": "ang2", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang3"}, "name": "ang3", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang4"}, "name": "ang4", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang5"}, "name": "ang5", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang6"}, "name": "ang6", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang7"}, "name": "ang7", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang8"}, "name": "ang8", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang9"}, "name": "ang9", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang10"}, "name": "ang10", "inbound_nodes": []}, {"class_name": "Normalization", "config": {"name": "normalization", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization", "inbound_nodes": [[["ang1", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_1", "inbound_nodes": [[["ang2", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_2", "inbound_nodes": [[["ang3", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_3", "inbound_nodes": [[["ang4", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_4", "inbound_nodes": [[["ang5", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_5", "inbound_nodes": [[["ang6", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_6", "inbound_nodes": [[["ang7", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_7", "inbound_nodes": [[["ang8", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_8", "inbound_nodes": [[["ang9", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_9", "inbound_nodes": [[["ang10", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["normalization", 0, 0, {}], ["normalization_1", 0, 0, {}], ["normalization_2", 0, 0, {}], ["normalization_3", 0, 0, {}], ["normalization_4", 0, 0, {}], ["normalization_5", 0, 0, {}], ["normalization_6", 0, 0, {}], ["normalization_7", 0, 0, {}], ["normalization_8", 0, 0, {}], ["normalization_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["ang1", 0, 0], ["ang2", 0, 0], ["ang3", 0, 0], ["ang4", 0, 0], ["ang5", 0, 0], ["ang6", 0, 0], ["ang7", 0, 0], ["ang8", 0, 0], ["ang9", 0, 0], ["ang10", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang1"}, "name": "ang1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang2"}, "name": "ang2", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang3"}, "name": "ang3", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang4"}, "name": "ang4", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang5"}, "name": "ang5", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang6"}, "name": "ang6", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang7"}, "name": "ang7", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang8"}, "name": "ang8", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang9"}, "name": "ang9", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang10"}, "name": "ang10", "inbound_nodes": []}, {"class_name": "Normalization", "config": {"name": "normalization", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization", "inbound_nodes": [[["ang1", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_1", "inbound_nodes": [[["ang2", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_2", "inbound_nodes": [[["ang3", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_3", "inbound_nodes": [[["ang4", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_4", "inbound_nodes": [[["ang5", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_5", "inbound_nodes": [[["ang6", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_6", "inbound_nodes": [[["ang7", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_7", "inbound_nodes": [[["ang8", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_8", "inbound_nodes": [[["ang9", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_9", "inbound_nodes": [[["ang10", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["normalization", 0, 0, {}], ["normalization_1", 0, 0, {}], ["normalization_2", 0, 0, {}], ["normalization_3", 0, 0, {}], ["normalization_4", 0, 0, {}], ["normalization_5", 0, 0, {}], ["normalization_6", 0, 0, {}], ["normalization_7", 0, 0, {}], ["normalization_8", 0, 0, {}], ["normalization_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["ang1", 0, 0], ["ang2", 0, 0], ["ang3", 0, 0], ["ang4", 0, 0], ["ang5", 0, 0], ["ang6", 0, 0], ["ang7", 0, 0], ["ang8", 0, 0], ["ang9", 0, 0], ["ang10", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang1"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang2"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang3"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang4"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang5", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang5"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang6"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang7", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang7"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang8", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang8"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang9", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang9"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "ang10", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ang10"}}
�
state_variables
 _broadcast_shape
!mean
"variance
	#count
$	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
%state_variables
&_broadcast_shape
'mean
(variance
	)count
*	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
+state_variables
,_broadcast_shape
-mean
.variance
	/count
0	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
1state_variables
2_broadcast_shape
3mean
4variance
	5count
6	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
7state_variables
8_broadcast_shape
9mean
:variance
	;count
<	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
=state_variables
>_broadcast_shape
?mean
@variance
	Acount
B	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
Cstate_variables
D_broadcast_shape
Emean
Fvariance
	Gcount
H	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
Istate_variables
J_broadcast_shape
Kmean
Lvariance
	Mcount
N	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
Ostate_variables
P_broadcast_shape
Qmean
Rvariance
	Scount
T	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
Ustate_variables
V_broadcast_shape
Wmean
Xvariance
	Ycount
Z	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [32, 1]}
�
[trainable_variables
\	variables
]regularization_losses
^	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�

_kernel
`bias
atrainable_variables
b	variables
cregularization_losses
d	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�
etrainable_variables
f	variables
gregularization_losses
h	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
�

ikernel
jbias
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�
oiter

pbeta_1

qbeta_2
	rdecay
slearning_rate_m�`m�im�jm�_v�`v�iv�jv�"
	optimizer
<
_0
`1
i2
j3"
trackable_list_wrapper
�
!0
"1
#2
'3
(4
)5
-6
.7
/8
39
410
511
912
:13
;14
?15
@16
A17
E18
F19
G20
K21
L22
M23
Q24
R25
S26
W27
X28
Y29
_30
`31
i32
j33"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tlayer_metrics
trainable_variables
umetrics
	variables

vlayers
wlayer_regularization_losses
xnon_trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
C
!mean
"variance
	#count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
'mean
(variance
	)count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
-mean
.variance
	/count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
3mean
4variance
	5count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
9mean
:variance
	;count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
?mean
@variance
	Acount"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
Emean
Fvariance
	Gcount"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
Kmean
Lvariance
	Mcount"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
Qmean
Rvariance
	Scount"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
C
Wmean
Xvariance
	Ycount"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ylayer_metrics
[trainable_variables
zmetrics
\	variables

{layers
|layer_regularization_losses
}non_trainable_variables
]regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:
 2dense/kernel
: 2
dense/bias
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~layer_metrics
atrainable_variables
metrics
b	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
cregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
etrainable_variables
�metrics
f	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
gregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
ktrainable_variables
�metrics
l	variables
�layers
 �layer_regularization_losses
�non_trainable_variables
mregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23"
trackable_list_wrapper
 "
trackable_list_wrapper
�
!0
"1
#2
'3
(4
)5
-6
.7
/8
39
410
511
912
:13
;14
?15
@16
A17
E18
F19
G20
K21
L22
M23
Q24
R25
S26
W27
X28
Y29"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
#:!
 2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
#:!
 2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
�2�
%__inference_model_layer_call_fn_85901
%__inference_model_layer_call_fn_85839
%__inference_model_layer_call_fn_85161
%__inference_model_layer_call_fn_85378�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_84528�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
�2�
@__inference_model_layer_call_and_return_conditional_losses_84943
@__inference_model_layer_call_and_return_conditional_losses_85617
@__inference_model_layer_call_and_return_conditional_losses_84788
@__inference_model_layer_call_and_return_conditional_losses_85777�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_concatenate_layer_call_fn_85930�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_concatenate_layer_call_and_return_conditional_losses_85916�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_dense_layer_call_fn_85950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_dense_layer_call_and_return_conditional_losses_85941�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dropout_layer_call_fn_85972
'__inference_dropout_layer_call_fn_85977�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_dropout_layer_call_and_return_conditional_losses_85962
B__inference_dropout_layer_call_and_return_conditional_losses_85967�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_dense_1_layer_call_fn_85997�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_85988�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_85450ang1ang10ang2ang3ang4ang5ang6ang7ang8ang9"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_84528�!"'(-.349:?@EFKLQRWX_`ij���
���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
� "1�.
,
dense_1!�
dense_1����������
F__inference_concatenate_layer_call_and_return_conditional_losses_85916����
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
� "%�"
�
0���������

� �
+__inference_concatenate_layer_call_fn_85930����
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
� "����������
�
B__inference_dense_1_layer_call_and_return_conditional_losses_85988\ij/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� z
'__inference_dense_1_layer_call_fn_85997Oij/�,
%�"
 �
inputs��������� 
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_85941\_`/�,
%�"
 �
inputs���������

� "%�"
�
0��������� 
� x
%__inference_dense_layer_call_fn_85950O_`/�,
%�"
 �
inputs���������

� "���������� �
B__inference_dropout_layer_call_and_return_conditional_losses_85962\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� �
B__inference_dropout_layer_call_and_return_conditional_losses_85967\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� z
'__inference_dropout_layer_call_fn_85972O3�0
)�&
 �
inputs��������� 
p
� "���������� z
'__inference_dropout_layer_call_fn_85977O3�0
)�&
 �
inputs��������� 
p 
� "���������� �
@__inference_model_layer_call_and_return_conditional_losses_84788�!"'(-.349:?@EFKLQRWX_`ij���
���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_84943�!"'(-.349:?@EFKLQRWX_`ij���
���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_85617�!"'(-.349:?@EFKLQRWX_`ij���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_85777�!"'(-.349:?@EFKLQRWX_`ij���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
p 

 
� "%�"
�
0���������
� �
%__inference_model_layer_call_fn_85161�!"'(-.349:?@EFKLQRWX_`ij���
���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
p

 
� "�����������
%__inference_model_layer_call_fn_85378�!"'(-.349:?@EFKLQRWX_`ij���
���
���
�
ang1���������
�
ang2���������
�
ang3���������
�
ang4���������
�
ang5���������
�
ang6���������
�
ang7���������
�
ang8���������
�
ang9���������
�
ang10���������
p 

 
� "�����������
%__inference_model_layer_call_fn_85839�!"'(-.349:?@EFKLQRWX_`ij���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
p

 
� "�����������
%__inference_model_layer_call_fn_85901�!"'(-.349:?@EFKLQRWX_`ij���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
"�
inputs/7���������
"�
inputs/8���������
"�
inputs/9���������
p 

 
� "�����������
#__inference_signature_wrapper_85450�!"'(-.349:?@EFKLQRWX_`ij���
� 
���
&
ang1�
ang1���������
(
ang10�
ang10���������
&
ang2�
ang2���������
&
ang3�
ang3���������
&
ang4�
ang4���������
&
ang5�
ang5���������
&
ang6�
ang6���������
&
ang7�
ang7���������
&
ang8�
ang8���������
&
ang9�
ang9���������"1�.
,
dense_1!�
dense_1���������