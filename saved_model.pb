ύΤ
Α
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
ϋ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ρ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
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
Α
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
χ
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8₯η

Nadam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_5/bias/v
y
(Nadam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_5/bias/v*
_output_shapes
:*
dtype0

Nadam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameNadam/dense_5/kernel/v

*Nadam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_5/kernel/v*
_output_shapes
:	*
dtype0

Nadam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/v
z
(Nadam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/v*
_output_shapes	
:*
dtype0

Nadam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameNadam/dense_4/kernel/v

*Nadam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/v*
_output_shapes
:	 *
dtype0

Nadam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameNadam/conv2d_23/bias/v
}
*Nadam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_23/bias/v*
_output_shapes
: *
dtype0

Nadam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameNadam/conv2d_23/kernel/v

,Nadam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_23/kernel/v*&
_output_shapes
: *
dtype0

Nadam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_22/bias/v
}
*Nadam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_22/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_22/kernel/v

,Nadam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_22/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_21/bias/v
}
*Nadam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_21/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*)
shared_nameNadam/conv2d_21/kernel/v

,Nadam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_21/kernel/v*&
_output_shapes
:`*
dtype0

Nadam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameNadam/conv2d_20/bias/v
}
*Nadam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_20/bias/v*
_output_shapes
:`*
dtype0

Nadam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*)
shared_nameNadam/conv2d_20/kernel/v

,Nadam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_20/kernel/v*&
_output_shapes
:``*
dtype0

Nadam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameNadam/conv2d_19/bias/v
}
*Nadam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_19/bias/v*
_output_shapes
:`*
dtype0

Nadam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*)
shared_nameNadam/conv2d_19/kernel/v

,Nadam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_19/kernel/v*'
_output_shapes
:`*
dtype0

"Nadam/layer_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/layer_normalization_8/beta/v

6Nadam/layer_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp"Nadam/layer_normalization_8/beta/v*
_output_shapes	
:*
dtype0

#Nadam/layer_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/layer_normalization_8/gamma/v

7Nadam/layer_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp#Nadam/layer_normalization_8/gamma/v*
_output_shapes	
:*
dtype0

Nadam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_18/bias/v
~
*Nadam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_18/bias/v*
_output_shapes	
:*
dtype0

Nadam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_18/kernel/v

,Nadam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_18/kernel/v*'
_output_shapes
:*
dtype0

Nadam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_5/bias/m
y
(Nadam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_5/bias/m*
_output_shapes
:*
dtype0

Nadam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameNadam/dense_5/kernel/m

*Nadam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_5/kernel/m*
_output_shapes
:	*
dtype0

Nadam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/m
z
(Nadam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/m*
_output_shapes	
:*
dtype0

Nadam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameNadam/dense_4/kernel/m

*Nadam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/m*
_output_shapes
:	 *
dtype0

Nadam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameNadam/conv2d_23/bias/m
}
*Nadam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_23/bias/m*
_output_shapes
: *
dtype0

Nadam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameNadam/conv2d_23/kernel/m

,Nadam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_23/kernel/m*&
_output_shapes
: *
dtype0

Nadam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_22/bias/m
}
*Nadam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_22/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_22/kernel/m

,Nadam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_22/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_21/bias/m
}
*Nadam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_21/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*)
shared_nameNadam/conv2d_21/kernel/m

,Nadam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_21/kernel/m*&
_output_shapes
:`*
dtype0

Nadam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameNadam/conv2d_20/bias/m
}
*Nadam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_20/bias/m*
_output_shapes
:`*
dtype0

Nadam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*)
shared_nameNadam/conv2d_20/kernel/m

,Nadam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_20/kernel/m*&
_output_shapes
:``*
dtype0

Nadam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameNadam/conv2d_19/bias/m
}
*Nadam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_19/bias/m*
_output_shapes
:`*
dtype0

Nadam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*)
shared_nameNadam/conv2d_19/kernel/m

,Nadam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_19/kernel/m*'
_output_shapes
:`*
dtype0

"Nadam/layer_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/layer_normalization_8/beta/m

6Nadam/layer_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp"Nadam/layer_normalization_8/beta/m*
_output_shapes	
:*
dtype0

#Nadam/layer_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/layer_normalization_8/gamma/m

7Nadam/layer_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp#Nadam/layer_normalization_8/gamma/m*
_output_shapes	
:*
dtype0

Nadam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_18/bias/m
~
*Nadam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_18/bias/m*
_output_shapes	
:*
dtype0

Nadam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_18/kernel/m

,Nadam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_18/kernel/m*'
_output_shapes
:*
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
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	 *
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
: *
dtype0

conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
: *
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0

conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:*
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:`*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:`*
dtype0

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:``*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:`*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameconv2d_19/kernel
~
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*'
_output_shapes
:`*
dtype0

layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_8/beta

.layer_normalization_8/beta/Read/ReadVariableOpReadVariableOplayer_normalization_8/beta*
_output_shapes	
:*
dtype0

layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_8/gamma

/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_8/gamma*
_output_shapes	
:*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_18/kernel
~
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*'
_output_shapes
:*
dtype0

serving_default_conv2d_18_inputPlaceholder*1
_output_shapes
:?????????γγ*
dtype0*&
shape:?????????γγ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_inputconv2d_18/kernelconv2d_18/biaslayer_normalization_8/gammalayer_normalization_8/betaconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_57475

NoOpNoOp
Ι
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ΚΘ
valueΏΘB»Θ B³Θ
Β
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
layer-18
layer-19
layer-20
layer_with_weights-6
layer-21
layer-22
layer-23
layer-24
layer_with_weights-7
layer-25
layer-26
layer_with_weights-8
layer-27
layer-28
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_default_save_signature
%	optimizer
&
signatures*
Θ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*

0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
―
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<axis
	=gamma
>beta*

?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 

E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
Θ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op*

T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 

Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 

`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
Θ
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 

u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses* 

{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ρ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ρ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+‘&call_and_return_all_conditional_losses
’kernel
	£bias
!€_jit_compiled_convolution_op*

₯	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ͺ&call_and_return_all_conditional_losses* 

«	variables
¬trainable_variables
­regularization_losses
?	keras_api
―__call__
+°&call_and_return_all_conditional_losses* 

±	variables
²trainable_variables
³regularization_losses
΄	keras_api
΅__call__
+Ά&call_and_return_all_conditional_losses* 
Ρ
·	variables
Έtrainable_variables
Ήregularization_losses
Ί	keras_api
»__call__
+Ό&call_and_return_all_conditional_losses
½kernel
	Ύbias
!Ώ_jit_compiled_convolution_op*

ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses* 

Ζ	variables
Ηtrainable_variables
Θregularization_losses
Ι	keras_api
Κ__call__
+Λ&call_and_return_all_conditional_losses* 

Μ	variables
Νtrainable_variables
Ξregularization_losses
Ο	keras_api
Π__call__
+Ρ&call_and_return_all_conditional_losses* 
?
?	variables
Σtrainable_variables
Τregularization_losses
Υ	keras_api
Φ__call__
+Χ&call_and_return_all_conditional_losses
Ψkernel
	Ωbias*
¬
Ϊ	variables
Ϋtrainable_variables
άregularization_losses
έ	keras_api
ή__call__
+ί&call_and_return_all_conditional_losses
ΰ_random_generator* 
?
α	variables
βtrainable_variables
γregularization_losses
δ	keras_api
ε__call__
+ζ&call_and_return_all_conditional_losses
ηkernel
	θbias*

ι	variables
κtrainable_variables
λregularization_losses
μ	keras_api
ν__call__
+ξ&call_and_return_all_conditional_losses* 

-0
.1
=2
>3
Q4
R5
l6
m7
8
9
’10
£11
½12
Ύ13
Ψ14
Ω15
η16
θ17*

-0
.1
=2
>3
Q4
R5
l6
m7
8
9
’10
£11
½12
Ύ13
Ψ14
Ω15
η16
θ17*
* 
΅
οnon_trainable_variables
πlayers
ρmetrics
 ςlayer_regularization_losses
σlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
$_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
:
τtrace_0
υtrace_1
φtrace_2
χtrace_3* 
:
ψtrace_0
ωtrace_1
ϊtrace_2
ϋtrace_3* 
* 
Ϊ
	όiter
ύbeta_1
ώbeta_2

?decay
learning_rate
momentum_cache-mΫ.mά=mέ>mήQmίRmΰlmαmmβ	mγ	mδ	’mε	£mζ	½mη	Ύmθ	Ψmι	Ωmκ	ηmλ	θmμ-vν.vξ=vο>vπQvρRvςlvσmvτ	vυ	vφ	’vχ	£vψ	½vω	Ύvϊ	Ψvϋ	Ωvό	ηvύ	θvώ*

serving_default* 

-0
.1*

-0
.1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

=0
>1*

=0
>1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_8/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_8/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

€trace_0* 

₯trace_0* 

Q0
R1*

Q0
R1*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

«trace_0* 

¬trace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

­non_trainable_variables
?layers
―metrics
 °layer_regularization_losses
±layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

²trace_0* 

³trace_0* 
* 
* 
* 

΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

Ήtrace_0* 

Ίtrace_0* 
* 
* 
* 

»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

ΐtrace_0* 

Αtrace_0* 

l0
m1*

l0
m1*
* 

Βnon_trainable_variables
Γlayers
Δmetrics
 Εlayer_regularization_losses
Ζlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

Ηtrace_0* 

Θtrace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ιnon_trainable_variables
Κlayers
Λmetrics
 Μlayer_regularization_losses
Νlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

Ξtrace_0* 

Οtrace_0* 
* 
* 
* 

Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses* 

Υtrace_0* 

Φtrace_0* 
* 
* 
* 

Χnon_trainable_variables
Ψlayers
Ωmetrics
 Ϊlayer_regularization_losses
Ϋlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

άtrace_0* 

έtrace_0* 

0
1*

0
1*
* 

ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

γtrace_0* 

δtrace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

κtrace_0* 

λtrace_0* 
* 
* 
* 

μnon_trainable_variables
νlayers
ξmetrics
 οlayer_regularization_losses
πlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ρtrace_0* 

ςtrace_0* 
* 
* 
* 

σnon_trainable_variables
τlayers
υmetrics
 φlayer_regularization_losses
χlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ψtrace_0* 

ωtrace_0* 

’0
£1*

’0
£1*
* 

ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses*

?trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
₯	variables
¦trainable_variables
§regularization_losses
©__call__
+ͺ&call_and_return_all_conditional_losses
'ͺ"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
«	variables
¬trainable_variables
­regularization_losses
―__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
±	variables
²trainable_variables
³regularization_losses
΅__call__
+Ά&call_and_return_all_conditional_losses
'Ά"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

½0
Ύ1*

½0
Ύ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
·	variables
Έtrainable_variables
Ήregularization_losses
»__call__
+Ό&call_and_return_all_conditional_losses
'Ό"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
‘layer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses* 

’trace_0* 

£trace_0* 
* 
* 
* 

€non_trainable_variables
₯layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Κ__call__
+Λ&call_and_return_all_conditional_losses
'Λ"call_and_return_conditional_losses* 

©trace_0* 

ͺtrace_0* 
* 
* 
* 

«non_trainable_variables
¬layers
­metrics
 ?layer_regularization_losses
―layer_metrics
Μ	variables
Νtrainable_variables
Ξregularization_losses
Π__call__
+Ρ&call_and_return_all_conditional_losses
'Ρ"call_and_return_conditional_losses* 

°trace_0* 

±trace_0* 

Ψ0
Ω1*

Ψ0
Ω1*
* 

²non_trainable_variables
³layers
΄metrics
 ΅layer_regularization_losses
Άlayer_metrics
?	variables
Σtrainable_variables
Τregularization_losses
Φ__call__
+Χ&call_and_return_all_conditional_losses
'Χ"call_and_return_conditional_losses*

·trace_0* 

Έtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ήnon_trainable_variables
Ίlayers
»metrics
 Όlayer_regularization_losses
½layer_metrics
Ϊ	variables
Ϋtrainable_variables
άregularization_losses
ή__call__
+ί&call_and_return_all_conditional_losses
'ί"call_and_return_conditional_losses* 

Ύtrace_0
Ώtrace_1* 

ΐtrace_0
Αtrace_1* 
* 

η0
θ1*

η0
θ1*
* 

Βnon_trainable_variables
Γlayers
Δmetrics
 Εlayer_regularization_losses
Ζlayer_metrics
α	variables
βtrainable_variables
γregularization_losses
ε__call__
+ζ&call_and_return_all_conditional_losses
'ζ"call_and_return_conditional_losses*

Ηtrace_0* 

Θtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ιnon_trainable_variables
Κlayers
Λmetrics
 Μlayer_regularization_losses
Νlayer_metrics
ι	variables
κtrainable_variables
λregularization_losses
ν__call__
+ξ&call_and_return_all_conditional_losses
'ξ"call_and_return_conditional_losses* 

Ξtrace_0* 

Οtrace_0* 
* 
β
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
24
25
26
27
28*

Π0
Ρ1*
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
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
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
?	variables
Σ	keras_api

Τtotal

Υcount*
M
Φ	variables
Χ	keras_api

Ψtotal

Ωcount
Ϊ
_fn_kwargs*

Τ0
Υ1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ψ0
Ω1*

Φ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
~
VARIABLE_VALUENadam/conv2d_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Nadam/layer_normalization_8/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Nadam/layer_normalization_8/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_23/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_23/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUENadam/dense_4/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_4/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUENadam/dense_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Nadam/layer_normalization_8/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Nadam/layer_normalization_8/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_23/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_23/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUENadam/dense_4/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_4/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUENadam/dense_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp/layer_normalization_8/gamma/Read/ReadVariableOp.layer_normalization_8/beta/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Nadam/conv2d_18/kernel/m/Read/ReadVariableOp*Nadam/conv2d_18/bias/m/Read/ReadVariableOp7Nadam/layer_normalization_8/gamma/m/Read/ReadVariableOp6Nadam/layer_normalization_8/beta/m/Read/ReadVariableOp,Nadam/conv2d_19/kernel/m/Read/ReadVariableOp*Nadam/conv2d_19/bias/m/Read/ReadVariableOp,Nadam/conv2d_20/kernel/m/Read/ReadVariableOp*Nadam/conv2d_20/bias/m/Read/ReadVariableOp,Nadam/conv2d_21/kernel/m/Read/ReadVariableOp*Nadam/conv2d_21/bias/m/Read/ReadVariableOp,Nadam/conv2d_22/kernel/m/Read/ReadVariableOp*Nadam/conv2d_22/bias/m/Read/ReadVariableOp,Nadam/conv2d_23/kernel/m/Read/ReadVariableOp*Nadam/conv2d_23/bias/m/Read/ReadVariableOp*Nadam/dense_4/kernel/m/Read/ReadVariableOp(Nadam/dense_4/bias/m/Read/ReadVariableOp*Nadam/dense_5/kernel/m/Read/ReadVariableOp(Nadam/dense_5/bias/m/Read/ReadVariableOp,Nadam/conv2d_18/kernel/v/Read/ReadVariableOp*Nadam/conv2d_18/bias/v/Read/ReadVariableOp7Nadam/layer_normalization_8/gamma/v/Read/ReadVariableOp6Nadam/layer_normalization_8/beta/v/Read/ReadVariableOp,Nadam/conv2d_19/kernel/v/Read/ReadVariableOp*Nadam/conv2d_19/bias/v/Read/ReadVariableOp,Nadam/conv2d_20/kernel/v/Read/ReadVariableOp*Nadam/conv2d_20/bias/v/Read/ReadVariableOp,Nadam/conv2d_21/kernel/v/Read/ReadVariableOp*Nadam/conv2d_21/bias/v/Read/ReadVariableOp,Nadam/conv2d_22/kernel/v/Read/ReadVariableOp*Nadam/conv2d_22/bias/v/Read/ReadVariableOp,Nadam/conv2d_23/kernel/v/Read/ReadVariableOp*Nadam/conv2d_23/bias/v/Read/ReadVariableOp*Nadam/dense_4/kernel/v/Read/ReadVariableOp(Nadam/dense_4/bias/v/Read/ReadVariableOp*Nadam/dense_5/kernel/v/Read/ReadVariableOp(Nadam/dense_5/bias/v/Read/ReadVariableOpConst*M
TinF
D2B	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_58467
Έ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biaslayer_normalization_8/gammalayer_normalization_8/betaconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotal_1count_1totalcountNadam/conv2d_18/kernel/mNadam/conv2d_18/bias/m#Nadam/layer_normalization_8/gamma/m"Nadam/layer_normalization_8/beta/mNadam/conv2d_19/kernel/mNadam/conv2d_19/bias/mNadam/conv2d_20/kernel/mNadam/conv2d_20/bias/mNadam/conv2d_21/kernel/mNadam/conv2d_21/bias/mNadam/conv2d_22/kernel/mNadam/conv2d_22/bias/mNadam/conv2d_23/kernel/mNadam/conv2d_23/bias/mNadam/dense_4/kernel/mNadam/dense_4/bias/mNadam/dense_5/kernel/mNadam/dense_5/bias/mNadam/conv2d_18/kernel/vNadam/conv2d_18/bias/v#Nadam/layer_normalization_8/gamma/v"Nadam/layer_normalization_8/beta/vNadam/conv2d_19/kernel/vNadam/conv2d_19/bias/vNadam/conv2d_20/kernel/vNadam/conv2d_20/bias/vNadam/conv2d_21/kernel/vNadam/conv2d_21/bias/vNadam/conv2d_22/kernel/vNadam/conv2d_22/bias/vNadam/conv2d_23/kernel/vNadam/conv2d_23/bias/vNadam/dense_4/kernel/vNadam/dense_4/bias/vNadam/dense_5/kernel/vNadam/dense_5/bias/v*L
TinE
C2A*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_58669€π
‘
E
)__inference_dropout_2_layer_call_fn_58201

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56870a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58096

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
σ(
!__inference__traced_restore_58669
file_prefix<
!assignvariableop_conv2d_18_kernel:0
!assignvariableop_1_conv2d_18_bias:	=
.assignvariableop_2_layer_normalization_8_gamma:	<
-assignvariableop_3_layer_normalization_8_beta:	>
#assignvariableop_4_conv2d_19_kernel:`/
!assignvariableop_5_conv2d_19_bias:`=
#assignvariableop_6_conv2d_20_kernel:``/
!assignvariableop_7_conv2d_20_bias:`=
#assignvariableop_8_conv2d_21_kernel:`/
!assignvariableop_9_conv2d_21_bias:>
$assignvariableop_10_conv2d_22_kernel:0
"assignvariableop_11_conv2d_22_bias:>
$assignvariableop_12_conv2d_23_kernel: 0
"assignvariableop_13_conv2d_23_bias: 5
"assignvariableop_14_dense_4_kernel:	 /
 assignvariableop_15_dense_4_bias:	5
"assignvariableop_16_dense_5_kernel:	.
 assignvariableop_17_dense_5_bias:(
assignvariableop_18_nadam_iter:	 *
 assignvariableop_19_nadam_beta_1: *
 assignvariableop_20_nadam_beta_2: )
assignvariableop_21_nadam_decay: 1
'assignvariableop_22_nadam_learning_rate: 2
(assignvariableop_23_nadam_momentum_cache: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: #
assignvariableop_26_total: #
assignvariableop_27_count: G
,assignvariableop_28_nadam_conv2d_18_kernel_m:9
*assignvariableop_29_nadam_conv2d_18_bias_m:	F
7assignvariableop_30_nadam_layer_normalization_8_gamma_m:	E
6assignvariableop_31_nadam_layer_normalization_8_beta_m:	G
,assignvariableop_32_nadam_conv2d_19_kernel_m:`8
*assignvariableop_33_nadam_conv2d_19_bias_m:`F
,assignvariableop_34_nadam_conv2d_20_kernel_m:``8
*assignvariableop_35_nadam_conv2d_20_bias_m:`F
,assignvariableop_36_nadam_conv2d_21_kernel_m:`8
*assignvariableop_37_nadam_conv2d_21_bias_m:F
,assignvariableop_38_nadam_conv2d_22_kernel_m:8
*assignvariableop_39_nadam_conv2d_22_bias_m:F
,assignvariableop_40_nadam_conv2d_23_kernel_m: 8
*assignvariableop_41_nadam_conv2d_23_bias_m: =
*assignvariableop_42_nadam_dense_4_kernel_m:	 7
(assignvariableop_43_nadam_dense_4_bias_m:	=
*assignvariableop_44_nadam_dense_5_kernel_m:	6
(assignvariableop_45_nadam_dense_5_bias_m:G
,assignvariableop_46_nadam_conv2d_18_kernel_v:9
*assignvariableop_47_nadam_conv2d_18_bias_v:	F
7assignvariableop_48_nadam_layer_normalization_8_gamma_v:	E
6assignvariableop_49_nadam_layer_normalization_8_beta_v:	G
,assignvariableop_50_nadam_conv2d_19_kernel_v:`8
*assignvariableop_51_nadam_conv2d_19_bias_v:`F
,assignvariableop_52_nadam_conv2d_20_kernel_v:``8
*assignvariableop_53_nadam_conv2d_20_bias_v:`F
,assignvariableop_54_nadam_conv2d_21_kernel_v:`8
*assignvariableop_55_nadam_conv2d_21_bias_v:F
,assignvariableop_56_nadam_conv2d_22_kernel_v:8
*assignvariableop_57_nadam_conv2d_22_bias_v:F
,assignvariableop_58_nadam_conv2d_23_kernel_v: 8
*assignvariableop_59_nadam_conv2d_23_bias_v: =
*assignvariableop_60_nadam_dense_4_kernel_v:	 7
(assignvariableop_61_nadam_dense_4_bias_v:	=
*assignvariableop_62_nadam_dense_5_kernel_v:	6
(assignvariableop_63_nadam_dense_5_bias_v:
identity_65’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_60’AssignVariableOp_61’AssignVariableOp_62’AssignVariableOp_63’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*¬#
value’#B#AB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHυ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*
valueBAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ζ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*O
dtypesE
C2A	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp.assignvariableop_2_layer_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp-assignvariableop_3_layer_normalization_8_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_19_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_19_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_23_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_23_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_nadam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp assignvariableop_19_nadam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp assignvariableop_20_nadam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_nadam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp'assignvariableop_22_nadam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_nadam_momentum_cacheIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_nadam_conv2d_18_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_nadam_conv2d_18_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_30AssignVariableOp7assignvariableop_30_nadam_layer_normalization_8_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_nadam_layer_normalization_8_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp,assignvariableop_32_nadam_conv2d_19_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_nadam_conv2d_19_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp,assignvariableop_34_nadam_conv2d_20_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_nadam_conv2d_20_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp,assignvariableop_36_nadam_conv2d_21_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_nadam_conv2d_21_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp,assignvariableop_38_nadam_conv2d_22_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_nadam_conv2d_22_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp,assignvariableop_40_nadam_conv2d_23_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_nadam_conv2d_23_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp*assignvariableop_42_nadam_dense_4_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp(assignvariableop_43_nadam_dense_4_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp*assignvariableop_44_nadam_dense_5_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp(assignvariableop_45_nadam_dense_5_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp,assignvariableop_46_nadam_conv2d_18_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_nadam_conv2d_18_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_48AssignVariableOp7assignvariableop_48_nadam_layer_normalization_8_gamma_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_49AssignVariableOp6assignvariableop_49_nadam_layer_normalization_8_beta_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp,assignvariableop_50_nadam_conv2d_19_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp*assignvariableop_51_nadam_conv2d_19_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp,assignvariableop_52_nadam_conv2d_20_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_nadam_conv2d_20_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp,assignvariableop_54_nadam_conv2d_21_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_nadam_conv2d_21_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp,assignvariableop_56_nadam_conv2d_22_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp*assignvariableop_57_nadam_conv2d_22_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp,assignvariableop_58_nadam_conv2d_23_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp*assignvariableop_59_nadam_conv2d_23_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp*assignvariableop_60_nadam_dense_4_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp(assignvariableop_61_nadam_dense_4_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp*assignvariableop_62_nadam_dense_5_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp(assignvariableop_63_nadam_dense_5_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ο
Identity_64Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_65IdentityIdentity_64:output:0^NoOp_1*
T0*
_output_shapes
: Ό
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_65Identity_65:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
μ
d
H__inference_activation_24_layer_call_and_return_conditional_losses_58106

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
Μ	
υ
B__inference_dense_4_layer_call_and_return_conditional_losses_58196

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:?????????w
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
Χ

__inference__traced_save_58467
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop:
6savev2_layer_normalization_8_gamma_read_readvariableop9
5savev2_layer_normalization_8_beta_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_nadam_conv2d_18_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_18_bias_m_read_readvariableopB
>savev2_nadam_layer_normalization_8_gamma_m_read_readvariableopA
=savev2_nadam_layer_normalization_8_beta_m_read_readvariableop7
3savev2_nadam_conv2d_19_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_19_bias_m_read_readvariableop7
3savev2_nadam_conv2d_20_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_20_bias_m_read_readvariableop7
3savev2_nadam_conv2d_21_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_21_bias_m_read_readvariableop7
3savev2_nadam_conv2d_22_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_22_bias_m_read_readvariableop7
3savev2_nadam_conv2d_23_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_23_bias_m_read_readvariableop5
1savev2_nadam_dense_4_kernel_m_read_readvariableop3
/savev2_nadam_dense_4_bias_m_read_readvariableop5
1savev2_nadam_dense_5_kernel_m_read_readvariableop3
/savev2_nadam_dense_5_bias_m_read_readvariableop7
3savev2_nadam_conv2d_18_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_18_bias_v_read_readvariableopB
>savev2_nadam_layer_normalization_8_gamma_v_read_readvariableopA
=savev2_nadam_layer_normalization_8_beta_v_read_readvariableop7
3savev2_nadam_conv2d_19_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_19_bias_v_read_readvariableop7
3savev2_nadam_conv2d_20_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_20_bias_v_read_readvariableop7
3savev2_nadam_conv2d_21_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_21_bias_v_read_readvariableop7
3savev2_nadam_conv2d_22_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_22_bias_v_read_readvariableop7
3savev2_nadam_conv2d_23_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_23_bias_v_read_readvariableop5
1savev2_nadam_dense_4_kernel_v_read_readvariableop3
/savev2_nadam_dense_4_bias_v_read_readvariableop5
1savev2_nadam_dense_5_kernel_v_read_readvariableop3
/savev2_nadam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: $
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*¬#
value’#B#AB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHς
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*
valueBAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop6savev2_layer_normalization_8_gamma_read_readvariableop5savev2_layer_normalization_8_beta_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_nadam_conv2d_18_kernel_m_read_readvariableop1savev2_nadam_conv2d_18_bias_m_read_readvariableop>savev2_nadam_layer_normalization_8_gamma_m_read_readvariableop=savev2_nadam_layer_normalization_8_beta_m_read_readvariableop3savev2_nadam_conv2d_19_kernel_m_read_readvariableop1savev2_nadam_conv2d_19_bias_m_read_readvariableop3savev2_nadam_conv2d_20_kernel_m_read_readvariableop1savev2_nadam_conv2d_20_bias_m_read_readvariableop3savev2_nadam_conv2d_21_kernel_m_read_readvariableop1savev2_nadam_conv2d_21_bias_m_read_readvariableop3savev2_nadam_conv2d_22_kernel_m_read_readvariableop1savev2_nadam_conv2d_22_bias_m_read_readvariableop3savev2_nadam_conv2d_23_kernel_m_read_readvariableop1savev2_nadam_conv2d_23_bias_m_read_readvariableop1savev2_nadam_dense_4_kernel_m_read_readvariableop/savev2_nadam_dense_4_bias_m_read_readvariableop1savev2_nadam_dense_5_kernel_m_read_readvariableop/savev2_nadam_dense_5_bias_m_read_readvariableop3savev2_nadam_conv2d_18_kernel_v_read_readvariableop1savev2_nadam_conv2d_18_bias_v_read_readvariableop>savev2_nadam_layer_normalization_8_gamma_v_read_readvariableop=savev2_nadam_layer_normalization_8_beta_v_read_readvariableop3savev2_nadam_conv2d_19_kernel_v_read_readvariableop1savev2_nadam_conv2d_19_bias_v_read_readvariableop3savev2_nadam_conv2d_20_kernel_v_read_readvariableop1savev2_nadam_conv2d_20_bias_v_read_readvariableop3savev2_nadam_conv2d_21_kernel_v_read_readvariableop1savev2_nadam_conv2d_21_bias_v_read_readvariableop3savev2_nadam_conv2d_22_kernel_v_read_readvariableop1savev2_nadam_conv2d_22_bias_v_read_readvariableop3savev2_nadam_conv2d_23_kernel_v_read_readvariableop1savev2_nadam_conv2d_23_bias_v_read_readvariableop1savev2_nadam_dense_4_kernel_v_read_readvariableop/savev2_nadam_dense_4_bias_v_read_readvariableop1savev2_nadam_dense_5_kernel_v_read_readvariableop/savev2_nadam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *O
dtypesE
C2A	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*ω
_input_shapesη
δ: :::::`:`:``:`:`:::: : :	 ::	:: : : : : : : : : : :::::`:`:``:`:`:::: : :	 ::	::::::`:`:``:`:`:::: : :	 ::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::-)
'
_output_shapes
:`: 

_output_shapes
:`:,(
&
_output_shapes
:``: 

_output_shapes
:`:,	(
&
_output_shapes
:`: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::! 

_output_shapes	
::-!)
'
_output_shapes
:`: "

_output_shapes
:`:,#(
&
_output_shapes
:``: $

_output_shapes
:`:,%(
&
_output_shapes
:`: &

_output_shapes
::,'(
&
_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
: : *

_output_shapes
: :%+!

_output_shapes
:	 :!,

_output_shapes	
::%-!

_output_shapes
:	: .

_output_shapes
::-/)
'
_output_shapes
::!0

_output_shapes	
::!1

_output_shapes	
::!2

_output_shapes	
::-3)
'
_output_shapes
:`: 4

_output_shapes
:`:,5(
&
_output_shapes
:``: 6

_output_shapes
:`:,7(
&
_output_shapes
:`: 8

_output_shapes
::,9(
&
_output_shapes
:: :

_output_shapes
::,;(
&
_output_shapes
: : <

_output_shapes
: :%=!

_output_shapes
:	 :!>

_output_shapes	
::%?!

_output_shapes
:	: @

_output_shapes
::A

_output_shapes
: 
¨

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_57996

inputs8
conv2d_readvariableop_resource:``-
biasadd_readvariableop_resource:`
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_23_layer_call_fn_58161

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ι	
τ
B__inference_dense_5_layer_call_and_return_conditional_losses_56882

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
¬

ώ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_57946

inputs9
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_22_layer_call_fn_58111

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_21_layer_call_fn_58061

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_58127

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58066

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
μ
d
H__inference_activation_22_layer_call_and_return_conditional_losses_56763

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????`b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
μ
d
H__inference_activation_25_layer_call_and_return_conditional_losses_56838

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:????????? b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
Ω

,__inference_sequential_3_layer_call_fn_56935
conv2d_18_input"
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	$
	unknown_3:`
	unknown_4:`#
	unknown_5:``
	unknown_6:`#
	unknown_7:`
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13:	 

unknown_14:	

unknown_15:	

unknown_16:
identity’StatefulPartitionedCallΌ
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_56896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input
©
C
'__inference_flatten_layer_call_fn_58171

inputs
identity­
PartitionedCallPartitionedCallinputs*
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
GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_56847`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_18_layer_call_fn_57911

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
χk
υ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57426
conv2d_18_input*
conv2d_18_57360:
conv2d_18_57362:	*
layer_normalization_8_57366:	*
layer_normalization_8_57368:	*
conv2d_19_57373:`
conv2d_19_57375:`)
conv2d_20_57381:``
conv2d_20_57383:`)
conv2d_21_57389:`
conv2d_21_57391:)
conv2d_22_57397:
conv2d_22_57399:)
conv2d_23_57405: 
conv2d_23_57407:  
dense_4_57413:	 
dense_4_57415:	 
dense_5_57419:	
dense_5_57421:
identity’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’!conv2d_23/StatefulPartitionedCall’dense_4/StatefulPartitionedCall’dense_5/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’-layer_normalization_8/StatefulPartitionedCall
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_57360conv2d_18_57362*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644ξ
activation_20/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_56655Κ
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0layer_normalization_8_57366layer_normalization_8_57368*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709
 max_pooling2d_18/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499υ
!zero_padding2d_15/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_15/PartitionedCall:output:0conv2d_19_57373conv2d_19_57375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727ν
activation_21/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_56738ο
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524τ
!zero_padding2d_16/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_16/PartitionedCall:output:0conv2d_20_57381conv2d_20_57383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752ν
activation_22/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_56763ο
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549τ
!zero_padding2d_17/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_17/PartitionedCall:output:0conv2d_21_57389conv2d_21_57391*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777ν
activation_23/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_56788ο
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574τ
!zero_padding2d_18/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_18/PartitionedCall:output:0conv2d_22_57397conv2d_22_57399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802ν
activation_24/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_24_layer_call_and_return_conditional_losses_56813ο
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599τ
!zero_padding2d_19/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_19/PartitionedCall:output:0conv2d_23_57405conv2d_23_57407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827ν
activation_25/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_25_layer_call_and_return_conditional_losses_56838ο
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624Ψ
flatten/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
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
GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_56847
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_57413dense_4_57415*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_56859μ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56971
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_5_57419dense_5_57421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_56882γ
activation_26/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_26_layer_call_and_return_conditional_losses_56893u
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ά
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input
σ
b
)__inference_dropout_2_layer_call_fn_58206

inputs
identity’StatefulPartitionedCallΐ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56971p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
₯Έ
π
 __inference__wrapped_model_56490
conv2d_18_inputP
5sequential_3_conv2d_18_conv2d_readvariableop_resource:E
6sequential_3_conv2d_18_biasadd_readvariableop_resource:	O
@sequential_3_layer_normalization_8_mul_4_readvariableop_resource:	M
>sequential_3_layer_normalization_8_add_readvariableop_resource:	P
5sequential_3_conv2d_19_conv2d_readvariableop_resource:`D
6sequential_3_conv2d_19_biasadd_readvariableop_resource:`O
5sequential_3_conv2d_20_conv2d_readvariableop_resource:``D
6sequential_3_conv2d_20_biasadd_readvariableop_resource:`O
5sequential_3_conv2d_21_conv2d_readvariableop_resource:`D
6sequential_3_conv2d_21_biasadd_readvariableop_resource:O
5sequential_3_conv2d_22_conv2d_readvariableop_resource:D
6sequential_3_conv2d_22_biasadd_readvariableop_resource:O
5sequential_3_conv2d_23_conv2d_readvariableop_resource: D
6sequential_3_conv2d_23_biasadd_readvariableop_resource: F
3sequential_3_dense_4_matmul_readvariableop_resource:	 C
4sequential_3_dense_4_biasadd_readvariableop_resource:	F
3sequential_3_dense_5_matmul_readvariableop_resource:	B
4sequential_3_dense_5_biasadd_readvariableop_resource:
identity’-sequential_3/conv2d_18/BiasAdd/ReadVariableOp’,sequential_3/conv2d_18/Conv2D/ReadVariableOp’-sequential_3/conv2d_19/BiasAdd/ReadVariableOp’,sequential_3/conv2d_19/Conv2D/ReadVariableOp’-sequential_3/conv2d_20/BiasAdd/ReadVariableOp’,sequential_3/conv2d_20/Conv2D/ReadVariableOp’-sequential_3/conv2d_21/BiasAdd/ReadVariableOp’,sequential_3/conv2d_21/Conv2D/ReadVariableOp’-sequential_3/conv2d_22/BiasAdd/ReadVariableOp’,sequential_3/conv2d_22/Conv2D/ReadVariableOp’-sequential_3/conv2d_23/BiasAdd/ReadVariableOp’,sequential_3/conv2d_23/Conv2D/ReadVariableOp’+sequential_3/dense_4/BiasAdd/ReadVariableOp’*sequential_3/dense_4/MatMul/ReadVariableOp’+sequential_3/dense_5/BiasAdd/ReadVariableOp’*sequential_3/dense_5/MatMul/ReadVariableOp’5sequential_3/layer_normalization_8/add/ReadVariableOp’7sequential_3/layer_normalization_8/mul_4/ReadVariableOp«
,sequential_3/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0?
sequential_3/conv2d_18/Conv2DConv2Dconv2d_18_input4sequential_3/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88*
paddingVALID*
strides
‘
-sequential_3/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Γ
sequential_3/conv2d_18/BiasAddBiasAdd&sequential_3/conv2d_18/Conv2D:output:05sequential_3/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88
sequential_3/activation_20/ReluRelu'sequential_3/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88
(sequential_3/layer_normalization_8/ShapeShape-sequential_3/activation_20/Relu:activations:0*
T0*
_output_shapes
:
6sequential_3/layer_normalization_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8sequential_3/layer_normalization_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8sequential_3/layer_normalization_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0sequential_3/layer_normalization_8/strided_sliceStridedSlice1sequential_3/layer_normalization_8/Shape:output:0?sequential_3/layer_normalization_8/strided_slice/stack:output:0Asequential_3/layer_normalization_8/strided_slice/stack_1:output:0Asequential_3/layer_normalization_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_3/layer_normalization_8/mul/xConst*
_output_shapes
: *
dtype0*
value	B :Ό
&sequential_3/layer_normalization_8/mulMul1sequential_3/layer_normalization_8/mul/x:output:09sequential_3/layer_normalization_8/strided_slice:output:0*
T0*
_output_shapes
: 
8sequential_3/layer_normalization_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2sequential_3/layer_normalization_8/strided_slice_1StridedSlice1sequential_3/layer_normalization_8/Shape:output:0Asequential_3/layer_normalization_8/strided_slice_1/stack:output:0Csequential_3/layer_normalization_8/strided_slice_1/stack_1:output:0Csequential_3/layer_normalization_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΉ
(sequential_3/layer_normalization_8/mul_1Mul*sequential_3/layer_normalization_8/mul:z:0;sequential_3/layer_normalization_8/strided_slice_1:output:0*
T0*
_output_shapes
: 
8sequential_3/layer_normalization_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2sequential_3/layer_normalization_8/strided_slice_2StridedSlice1sequential_3/layer_normalization_8/Shape:output:0Asequential_3/layer_normalization_8/strided_slice_2/stack:output:0Csequential_3/layer_normalization_8/strided_slice_2/stack_1:output:0Csequential_3/layer_normalization_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask»
(sequential_3/layer_normalization_8/mul_2Mul,sequential_3/layer_normalization_8/mul_1:z:0;sequential_3/layer_normalization_8/strided_slice_2:output:0*
T0*
_output_shapes
: 
8sequential_3/layer_normalization_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:sequential_3/layer_normalization_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2sequential_3/layer_normalization_8/strided_slice_3StridedSlice1sequential_3/layer_normalization_8/Shape:output:0Asequential_3/layer_normalization_8/strided_slice_3/stack:output:0Csequential_3/layer_normalization_8/strided_slice_3/stack_1:output:0Csequential_3/layer_normalization_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_3/layer_normalization_8/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Β
(sequential_3/layer_normalization_8/mul_3Mul3sequential_3/layer_normalization_8/mul_3/x:output:0;sequential_3/layer_normalization_8/strided_slice_3:output:0*
T0*
_output_shapes
: t
2sequential_3/layer_normalization_8/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :t
2sequential_3/layer_normalization_8/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ό
0sequential_3/layer_normalization_8/Reshape/shapePack;sequential_3/layer_normalization_8/Reshape/shape/0:output:0,sequential_3/layer_normalization_8/mul_2:z:0,sequential_3/layer_normalization_8/mul_3:z:0;sequential_3/layer_normalization_8/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ϊ
*sequential_3/layer_normalization_8/ReshapeReshape-sequential_3/activation_20/Relu:activations:09sequential_3/layer_normalization_8/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????
.sequential_3/layer_normalization_8/ones/packedPack,sequential_3/layer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:r
-sequential_3/layer_normalization_8/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ξ
'sequential_3/layer_normalization_8/onesFill7sequential_3/layer_normalization_8/ones/packed:output:06sequential_3/layer_normalization_8/ones/Const:output:0*
T0*#
_output_shapes
:?????????
/sequential_3/layer_normalization_8/zeros/packedPack,sequential_3/layer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:s
.sequential_3/layer_normalization_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ρ
(sequential_3/layer_normalization_8/zerosFill8sequential_3/layer_normalization_8/zeros/packed:output:07sequential_3/layer_normalization_8/zeros/Const:output:0*
T0*#
_output_shapes
:?????????k
(sequential_3/layer_normalization_8/ConstConst*
_output_shapes
: *
dtype0*
valueB m
*sequential_3/layer_normalization_8/Const_1Const*
_output_shapes
: *
dtype0*
valueB φ
3sequential_3/layer_normalization_8/FusedBatchNormV3FusedBatchNormV33sequential_3/layer_normalization_8/Reshape:output:00sequential_3/layer_normalization_8/ones:output:01sequential_3/layer_normalization_8/zeros:output:01sequential_3/layer_normalization_8/Const:output:03sequential_3/layer_normalization_8/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:ή
,sequential_3/layer_normalization_8/Reshape_1Reshape7sequential_3/layer_normalization_8/FusedBatchNormV3:y:01sequential_3/layer_normalization_8/Shape:output:0*
T0*0
_output_shapes
:?????????88΅
7sequential_3/layer_normalization_8/mul_4/ReadVariableOpReadVariableOp@sequential_3_layer_normalization_8_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0β
(sequential_3/layer_normalization_8/mul_4Mul5sequential_3/layer_normalization_8/Reshape_1:output:0?sequential_3/layer_normalization_8/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88±
5sequential_3/layer_normalization_8/add/ReadVariableOpReadVariableOp>sequential_3_layer_normalization_8_add_readvariableop_resource*
_output_shapes	
:*
dtype0Χ
&sequential_3/layer_normalization_8/addAddV2,sequential_3/layer_normalization_8/mul_4:z:0=sequential_3/layer_normalization_8/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88Κ
%sequential_3/max_pooling2d_18/MaxPoolMaxPool*sequential_3/layer_normalization_8/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

+sequential_3/zero_padding2d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Κ
"sequential_3/zero_padding2d_15/PadPad.sequential_3/max_pooling2d_18/MaxPool:output:04sequential_3/zero_padding2d_15/Pad/paddings:output:0*
T0*0
_output_shapes
:?????????  «
,sequential_3/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0ν
sequential_3/conv2d_19/Conv2DConv2D+sequential_3/zero_padding2d_15/Pad:output:04sequential_3/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
 
-sequential_3/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0Β
sequential_3/conv2d_19/BiasAddBiasAdd&sequential_3/conv2d_19/Conv2D:output:05sequential_3/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`
sequential_3/activation_21/ReluRelu'sequential_3/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`Μ
%sequential_3/max_pooling2d_19/MaxPoolMaxPool-sequential_3/activation_21/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

+sequential_3/zero_padding2d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Ι
"sequential_3/zero_padding2d_16/PadPad.sequential_3/max_pooling2d_19/MaxPool:output:04sequential_3/zero_padding2d_16/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`ͺ
,sequential_3/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype0ν
sequential_3/conv2d_20/Conv2DConv2D+sequential_3/zero_padding2d_16/Pad:output:04sequential_3/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
 
-sequential_3/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0Β
sequential_3/conv2d_20/BiasAddBiasAdd&sequential_3/conv2d_20/Conv2D:output:05sequential_3/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`
sequential_3/activation_22/ReluRelu'sequential_3/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`Μ
%sequential_3/max_pooling2d_20/MaxPoolMaxPool-sequential_3/activation_22/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

+sequential_3/zero_padding2d_17/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Ι
"sequential_3/zero_padding2d_17/PadPad.sequential_3/max_pooling2d_20/MaxPool:output:04sequential_3/zero_padding2d_17/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`ͺ
,sequential_3/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0ν
sequential_3/conv2d_21/Conv2DConv2D+sequential_3/zero_padding2d_17/Pad:output:04sequential_3/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
 
-sequential_3/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Β
sequential_3/conv2d_21/BiasAddBiasAdd&sequential_3/conv2d_21/Conv2D:output:05sequential_3/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
sequential_3/activation_23/ReluRelu'sequential_3/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Μ
%sequential_3/max_pooling2d_21/MaxPoolMaxPool-sequential_3/activation_23/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

+sequential_3/zero_padding2d_18/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Ι
"sequential_3/zero_padding2d_18/PadPad.sequential_3/max_pooling2d_21/MaxPool:output:04sequential_3/zero_padding2d_18/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????ͺ
,sequential_3/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ν
sequential_3/conv2d_22/Conv2DConv2D+sequential_3/zero_padding2d_18/Pad:output:04sequential_3/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
 
-sequential_3/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Β
sequential_3/conv2d_22/BiasAddBiasAdd&sequential_3/conv2d_22/Conv2D:output:05sequential_3/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
sequential_3/activation_24/ReluRelu'sequential_3/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Μ
%sequential_3/max_pooling2d_22/MaxPoolMaxPool-sequential_3/activation_24/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

+sequential_3/zero_padding2d_19/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Ι
"sequential_3/zero_padding2d_19/PadPad.sequential_3/max_pooling2d_22/MaxPool:output:04sequential_3/zero_padding2d_19/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????ͺ
,sequential_3/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ν
sequential_3/conv2d_23/Conv2DConv2D+sequential_3/zero_padding2d_19/Pad:output:04sequential_3/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
 
-sequential_3/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Β
sequential_3/conv2d_23/BiasAddBiasAdd&sequential_3/conv2d_23/Conv2D:output:05sequential_3/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 
sequential_3/activation_25/ReluRelu'sequential_3/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:????????? Μ
%sequential_3/max_pooling2d_23/MaxPoolMaxPool-sequential_3/activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
k
sequential_3/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
sequential_3/flatten/ReshapeReshape.sequential_3/max_pooling2d_23/MaxPool:output:0#sequential_3/flatten/Const:output:0*
T0*'
_output_shapes
:????????? 
*sequential_3/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_4_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0³
sequential_3/dense_4/MatMulMatMul%sequential_3/flatten/Reshape:output:02sequential_3/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+sequential_3/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ά
sequential_3/dense_4/BiasAddBiasAdd%sequential_3/dense_4/MatMul:product:03sequential_3/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
sequential_3/dropout_2/IdentityIdentity%sequential_3/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
*sequential_3/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0΅
sequential_3/dense_5/MatMulMatMul(sequential_3/dropout_2/Identity:output:02sequential_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
+sequential_3/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0΅
sequential_3/dense_5/BiasAddBiasAdd%sequential_3/dense_5/MatMul:product:03sequential_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
"sequential_3/activation_26/SoftmaxSoftmax%sequential_3/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????{
IdentityIdentity,sequential_3/activation_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????¨
NoOpNoOp.^sequential_3/conv2d_18/BiasAdd/ReadVariableOp-^sequential_3/conv2d_18/Conv2D/ReadVariableOp.^sequential_3/conv2d_19/BiasAdd/ReadVariableOp-^sequential_3/conv2d_19/Conv2D/ReadVariableOp.^sequential_3/conv2d_20/BiasAdd/ReadVariableOp-^sequential_3/conv2d_20/Conv2D/ReadVariableOp.^sequential_3/conv2d_21/BiasAdd/ReadVariableOp-^sequential_3/conv2d_21/Conv2D/ReadVariableOp.^sequential_3/conv2d_22/BiasAdd/ReadVariableOp-^sequential_3/conv2d_22/Conv2D/ReadVariableOp.^sequential_3/conv2d_23/BiasAdd/ReadVariableOp-^sequential_3/conv2d_23/Conv2D/ReadVariableOp,^sequential_3/dense_4/BiasAdd/ReadVariableOp+^sequential_3/dense_4/MatMul/ReadVariableOp,^sequential_3/dense_5/BiasAdd/ReadVariableOp+^sequential_3/dense_5/MatMul/ReadVariableOp6^sequential_3/layer_normalization_8/add/ReadVariableOp8^sequential_3/layer_normalization_8/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2^
-sequential_3/conv2d_18/BiasAdd/ReadVariableOp-sequential_3/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_18/Conv2D/ReadVariableOp,sequential_3/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_19/BiasAdd/ReadVariableOp-sequential_3/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_19/Conv2D/ReadVariableOp,sequential_3/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_20/BiasAdd/ReadVariableOp-sequential_3/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_20/Conv2D/ReadVariableOp,sequential_3/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_21/BiasAdd/ReadVariableOp-sequential_3/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_21/Conv2D/ReadVariableOp,sequential_3/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_22/BiasAdd/ReadVariableOp-sequential_3/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_22/Conv2D/ReadVariableOp,sequential_3/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_23/BiasAdd/ReadVariableOp-sequential_3/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_23/Conv2D/ReadVariableOp,sequential_3/conv2d_23/Conv2D/ReadVariableOp2Z
+sequential_3/dense_4/BiasAdd/ReadVariableOp+sequential_3/dense_4/BiasAdd/ReadVariableOp2X
*sequential_3/dense_4/MatMul/ReadVariableOp*sequential_3/dense_4/MatMul/ReadVariableOp2Z
+sequential_3/dense_5/BiasAdd/ReadVariableOp+sequential_3/dense_5/BiasAdd/ReadVariableOp2X
*sequential_3/dense_5/MatMul/ReadVariableOp*sequential_3/dense_5/MatMul/ReadVariableOp2n
5sequential_3/layer_normalization_8/add/ReadVariableOp5sequential_3/layer_normalization_8/add/ReadVariableOp2r
7sequential_3/layer_normalization_8/mul_4/ReadVariableOp7sequential_3/layer_normalization_8/mul_4/ReadVariableOp:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input
¬

ώ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727

inputs9
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_58027

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
Ϋ
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_58211

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Οj
Ρ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57357
conv2d_18_input*
conv2d_18_57291:
conv2d_18_57293:	*
layer_normalization_8_57297:	*
layer_normalization_8_57299:	*
conv2d_19_57304:`
conv2d_19_57306:`)
conv2d_20_57312:``
conv2d_20_57314:`)
conv2d_21_57320:`
conv2d_21_57322:)
conv2d_22_57328:
conv2d_22_57330:)
conv2d_23_57336: 
conv2d_23_57338:  
dense_4_57344:	 
dense_4_57346:	 
dense_5_57350:	
dense_5_57352:
identity’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’!conv2d_23/StatefulPartitionedCall’dense_4/StatefulPartitionedCall’dense_5/StatefulPartitionedCall’-layer_normalization_8/StatefulPartitionedCall
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_57291conv2d_18_57293*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644ξ
activation_20/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_56655Κ
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0layer_normalization_8_57297layer_normalization_8_57299*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709
 max_pooling2d_18/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499υ
!zero_padding2d_15/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_15/PartitionedCall:output:0conv2d_19_57304conv2d_19_57306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727ν
activation_21/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_56738ο
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524τ
!zero_padding2d_16/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_16/PartitionedCall:output:0conv2d_20_57312conv2d_20_57314*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752ν
activation_22/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_56763ο
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549τ
!zero_padding2d_17/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_17/PartitionedCall:output:0conv2d_21_57320conv2d_21_57322*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777ν
activation_23/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_56788ο
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574τ
!zero_padding2d_18/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_18/PartitionedCall:output:0conv2d_22_57328conv2d_22_57330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802ν
activation_24/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_24_layer_call_and_return_conditional_losses_56813ο
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599τ
!zero_padding2d_19/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_19/PartitionedCall:output:0conv2d_23_57336conv2d_23_57338*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827ν
activation_25/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_25_layer_call_and_return_conditional_losses_56838ο
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624Ψ
flatten/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
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
GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_56847
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_57344dense_4_57346*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_56859ά
dropout_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56870
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_5_57350dense_5_57352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_56882γ
activation_26/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_26_layer_call_and_return_conditional_losses_56893u
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_57916

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
π
d
H__inference_activation_20_layer_call_and_return_conditional_losses_56655

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:?????????88c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????88:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
μ
d
H__inference_activation_25_layer_call_and_return_conditional_losses_58156

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:????????? b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
₯
I
-__inference_activation_26_layer_call_fn_58247

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_26_layer_call_and_return_conditional_losses_56893`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
d
H__inference_activation_24_layer_call_and_return_conditional_losses_56813

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
³

?
D__inference_conv2d_18_layer_call_and_return_conditional_losses_57835

inputs9
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????γγ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
Ϋ
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_56870

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ε
I
-__inference_activation_23_layer_call_fn_58051

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_56788h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
d
H__inference_activation_22_layer_call_and_return_conditional_losses_58006

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????`b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
Ε
I
-__inference_activation_24_layer_call_fn_58101

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_24_layer_call_and_return_conditional_losses_56813h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
d
H__inference_activation_23_layer_call_and_return_conditional_losses_56788

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ό
 
5__inference_layer_normalization_8_layer_call_fn_57854

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallξ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
³

?
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644

inputs9
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????γγ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_58077

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ι	
τ
B__inference_dense_5_layer_call_and_return_conditional_losses_58242

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ί
M
1__inference_zero_padding2d_17_layer_call_fn_58021

inputs
identityΪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752

inputs8
conv2d_readvariableop_resource:``-
biasadd_readvariableop_resource:`
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
μ
d
H__inference_activation_21_layer_call_and_return_conditional_losses_56738

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????`b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
κ

)__inference_conv2d_20_layer_call_fn_57986

inputs!
unknown:``
	unknown_0:`
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
Υ)
υ
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:u
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*0
_output_shapes
:?????????88o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0y
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????88r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????88: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_57977

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Α

'__inference_dense_5_layer_call_fn_58232

inputs
unknown:	
	unknown_0:
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_56882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_19_layer_call_fn_57961

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_23_layer_call_fn_58136

inputs!
unknown: 
	unknown_0: 
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
π
d
H__inference_activation_20_layer_call_and_return_conditional_losses_57845

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:?????????88c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????88:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
Β
^
B__inference_flatten_layer_call_and_return_conditional_losses_58177

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:????????? X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ς
 
)__inference_conv2d_18_layer_call_fn_57825

inputs"
unknown:
	unknown_0:	
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????γγ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
ν

)__inference_conv2d_19_layer_call_fn_57936

inputs"
unknown:`
	unknown_0:`
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
Ε
I
-__inference_activation_21_layer_call_fn_57951

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_56738h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58016

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58046

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
΅
Ί
G__inference_sequential_3_layer_call_and_return_conditional_losses_57683

inputsC
(conv2d_18_conv2d_readvariableop_resource:8
)conv2d_18_biasadd_readvariableop_resource:	B
3layer_normalization_8_mul_4_readvariableop_resource:	@
1layer_normalization_8_add_readvariableop_resource:	C
(conv2d_19_conv2d_readvariableop_resource:`7
)conv2d_19_biasadd_readvariableop_resource:`B
(conv2d_20_conv2d_readvariableop_resource:``7
)conv2d_20_biasadd_readvariableop_resource:`B
(conv2d_21_conv2d_readvariableop_resource:`7
)conv2d_21_biasadd_readvariableop_resource:B
(conv2d_22_conv2d_readvariableop_resource:7
)conv2d_22_biasadd_readvariableop_resource:B
(conv2d_23_conv2d_readvariableop_resource: 7
)conv2d_23_biasadd_readvariableop_resource: 9
&dense_4_matmul_readvariableop_resource:	 6
'dense_4_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	5
'dense_5_biasadd_readvariableop_resource:
identity’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’ conv2d_22/BiasAdd/ReadVariableOp’conv2d_22/Conv2D/ReadVariableOp’ conv2d_23/BiasAdd/ReadVariableOp’conv2d_23/Conv2D/ReadVariableOp’dense_4/BiasAdd/ReadVariableOp’dense_4/MatMul/ReadVariableOp’dense_5/BiasAdd/ReadVariableOp’dense_5/MatMul/ReadVariableOp’(layer_normalization_8/add/ReadVariableOp’*layer_normalization_8/mul_4/ReadVariableOp
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0―
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88q
activation_20/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88k
layer_normalization_8/ShapeShape activation_20/Relu:activations:0*
T0*
_output_shapes
:s
)layer_normalization_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_8/strided_sliceStridedSlice$layer_normalization_8/Shape:output:02layer_normalization_8/strided_slice/stack:output:04layer_normalization_8/strided_slice/stack_1:output:04layer_normalization_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_8/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_8/mulMul$layer_normalization_8/mul/x:output:0,layer_normalization_8/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_1StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_1/stack:output:06layer_normalization_8/strided_slice_1/stack_1:output:06layer_normalization_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_8/mul_1Mullayer_normalization_8/mul:z:0.layer_normalization_8/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_2StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_2/stack:output:06layer_normalization_8/strided_slice_2/stack_1:output:06layer_normalization_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_8/mul_2Mullayer_normalization_8/mul_1:z:0.layer_normalization_8/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_3StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_3/stack:output:06layer_normalization_8/strided_slice_3/stack_1:output:06layer_normalization_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_8/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_8/mul_3Mul&layer_normalization_8/mul_3/x:output:0.layer_normalization_8/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_8/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_8/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_8/Reshape/shapePack.layer_normalization_8/Reshape/shape/0:output:0layer_normalization_8/mul_2:z:0layer_normalization_8/mul_3:z:0.layer_normalization_8/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:³
layer_normalization_8/ReshapeReshape activation_20/Relu:activations:0,layer_normalization_8/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_8/ones/packedPacklayer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_8/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_8/onesFill*layer_normalization_8/ones/packed:output:0)layer_normalization_8/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_8/zeros/packedPacklayer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_8/zerosFill+layer_normalization_8/zeros/packed:output:0*layer_normalization_8/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_8/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_8/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_8/FusedBatchNormV3FusedBatchNormV3&layer_normalization_8/Reshape:output:0#layer_normalization_8/ones:output:0$layer_normalization_8/zeros:output:0$layer_normalization_8/Const:output:0&layer_normalization_8/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_8/Reshape_1Reshape*layer_normalization_8/FusedBatchNormV3:y:0$layer_normalization_8/Shape:output:0*
T0*0
_output_shapes
:?????????88
*layer_normalization_8/mul_4/ReadVariableOpReadVariableOp3layer_normalization_8_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_8/mul_4Mul(layer_normalization_8/Reshape_1:output:02layer_normalization_8/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88
(layer_normalization_8/add/ReadVariableOpReadVariableOp1layer_normalization_8_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_8/addAddV2layer_normalization_8/mul_4:z:00layer_normalization_8/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88°
max_pooling2d_18/MaxPoolMaxPoollayer_normalization_8/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             £
zero_padding2d_15/PadPad!max_pooling2d_18/MaxPool:output:0'zero_padding2d_15/Pad/paddings:output:0*
T0*0
_output_shapes
:?????????  
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0Ζ
conv2d_19/Conv2DConv2Dzero_padding2d_15/Pad:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`p
activation_21/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`²
max_pooling2d_19/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

zero_padding2d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_16/PadPad!max_pooling2d_19/MaxPool:output:0'zero_padding2d_16/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype0Ζ
conv2d_20/Conv2DConv2Dzero_padding2d_16/Pad:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`p
activation_22/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`²
max_pooling2d_20/MaxPoolMaxPool activation_22/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

zero_padding2d_17/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_17/PadPad!max_pooling2d_20/MaxPool:output:0'zero_padding2d_17/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0Ζ
conv2d_21/Conv2DConv2Dzero_padding2d_17/Pad:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_23/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????²
max_pooling2d_21/MaxPoolMaxPool activation_23/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_18/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_18/PadPad!max_pooling2d_21/MaxPool:output:0'zero_padding2d_18/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ζ
conv2d_22/Conv2DConv2Dzero_padding2d_18/Pad:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_24/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????²
max_pooling2d_22/MaxPoolMaxPool activation_24/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_19/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_19/PadPad!max_pooling2d_22/MaxPool:output:0'zero_padding2d_19/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ζ
conv2d_23/Conv2DConv2Dzero_padding2d_19/Pad:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? p
activation_25/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ²
max_pooling2d_23/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    
flatten/ReshapeReshape!max_pooling2d_23/MaxPool:output:0flatten/Const:output:0*
T0*'
_output_shapes
:????????? 
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????k
dropout_2/IdentityIdentitydense_4/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMuldropout_2/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
activation_26/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentityactivation_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Ύ
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp)^layer_normalization_8/add/ReadVariableOp+^layer_normalization_8/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2T
(layer_normalization_8/add/ReadVariableOp(layer_normalization_8/add/ReadVariableOp2X
*layer_normalization_8/mul_4/ReadVariableOp*layer_normalization_8/mul_4/ReadVariableOp:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
ϊ
Ί
G__inference_sequential_3_layer_call_and_return_conditional_losses_57816

inputsC
(conv2d_18_conv2d_readvariableop_resource:8
)conv2d_18_biasadd_readvariableop_resource:	B
3layer_normalization_8_mul_4_readvariableop_resource:	@
1layer_normalization_8_add_readvariableop_resource:	C
(conv2d_19_conv2d_readvariableop_resource:`7
)conv2d_19_biasadd_readvariableop_resource:`B
(conv2d_20_conv2d_readvariableop_resource:``7
)conv2d_20_biasadd_readvariableop_resource:`B
(conv2d_21_conv2d_readvariableop_resource:`7
)conv2d_21_biasadd_readvariableop_resource:B
(conv2d_22_conv2d_readvariableop_resource:7
)conv2d_22_biasadd_readvariableop_resource:B
(conv2d_23_conv2d_readvariableop_resource: 7
)conv2d_23_biasadd_readvariableop_resource: 9
&dense_4_matmul_readvariableop_resource:	 6
'dense_4_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	5
'dense_5_biasadd_readvariableop_resource:
identity’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’ conv2d_22/BiasAdd/ReadVariableOp’conv2d_22/Conv2D/ReadVariableOp’ conv2d_23/BiasAdd/ReadVariableOp’conv2d_23/Conv2D/ReadVariableOp’dense_4/BiasAdd/ReadVariableOp’dense_4/MatMul/ReadVariableOp’dense_5/BiasAdd/ReadVariableOp’dense_5/MatMul/ReadVariableOp’(layer_normalization_8/add/ReadVariableOp’*layer_normalization_8/mul_4/ReadVariableOp
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0―
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88q
activation_20/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88k
layer_normalization_8/ShapeShape activation_20/Relu:activations:0*
T0*
_output_shapes
:s
)layer_normalization_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_8/strided_sliceStridedSlice$layer_normalization_8/Shape:output:02layer_normalization_8/strided_slice/stack:output:04layer_normalization_8/strided_slice/stack_1:output:04layer_normalization_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_8/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_8/mulMul$layer_normalization_8/mul/x:output:0,layer_normalization_8/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_1StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_1/stack:output:06layer_normalization_8/strided_slice_1/stack_1:output:06layer_normalization_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_8/mul_1Mullayer_normalization_8/mul:z:0.layer_normalization_8/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_2StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_2/stack:output:06layer_normalization_8/strided_slice_2/stack_1:output:06layer_normalization_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_8/mul_2Mullayer_normalization_8/mul_1:z:0.layer_normalization_8/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_8/strided_slice_3StridedSlice$layer_normalization_8/Shape:output:04layer_normalization_8/strided_slice_3/stack:output:06layer_normalization_8/strided_slice_3/stack_1:output:06layer_normalization_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_8/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_8/mul_3Mul&layer_normalization_8/mul_3/x:output:0.layer_normalization_8/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_8/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_8/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_8/Reshape/shapePack.layer_normalization_8/Reshape/shape/0:output:0layer_normalization_8/mul_2:z:0layer_normalization_8/mul_3:z:0.layer_normalization_8/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:³
layer_normalization_8/ReshapeReshape activation_20/Relu:activations:0,layer_normalization_8/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_8/ones/packedPacklayer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_8/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_8/onesFill*layer_normalization_8/ones/packed:output:0)layer_normalization_8/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_8/zeros/packedPacklayer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_8/zerosFill+layer_normalization_8/zeros/packed:output:0*layer_normalization_8/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_8/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_8/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_8/FusedBatchNormV3FusedBatchNormV3&layer_normalization_8/Reshape:output:0#layer_normalization_8/ones:output:0$layer_normalization_8/zeros:output:0$layer_normalization_8/Const:output:0&layer_normalization_8/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_8/Reshape_1Reshape*layer_normalization_8/FusedBatchNormV3:y:0$layer_normalization_8/Shape:output:0*
T0*0
_output_shapes
:?????????88
*layer_normalization_8/mul_4/ReadVariableOpReadVariableOp3layer_normalization_8_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_8/mul_4Mul(layer_normalization_8/Reshape_1:output:02layer_normalization_8/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88
(layer_normalization_8/add/ReadVariableOpReadVariableOp1layer_normalization_8_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_8/addAddV2layer_normalization_8/mul_4:z:00layer_normalization_8/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88°
max_pooling2d_18/MaxPoolMaxPoollayer_normalization_8/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             £
zero_padding2d_15/PadPad!max_pooling2d_18/MaxPool:output:0'zero_padding2d_15/Pad/paddings:output:0*
T0*0
_output_shapes
:?????????  
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype0Ζ
conv2d_19/Conv2DConv2Dzero_padding2d_15/Pad:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`p
activation_21/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`²
max_pooling2d_19/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

zero_padding2d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_16/PadPad!max_pooling2d_19/MaxPool:output:0'zero_padding2d_16/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype0Ζ
conv2d_20/Conv2DConv2Dzero_padding2d_16/Pad:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`p
activation_22/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????`²
max_pooling2d_20/MaxPoolMaxPool activation_22/Relu:activations:0*/
_output_shapes
:?????????`*
ksize
*
paddingVALID*
strides

zero_padding2d_17/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_17/PadPad!max_pooling2d_20/MaxPool:output:0'zero_padding2d_17/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????`
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0Ζ
conv2d_21/Conv2DConv2Dzero_padding2d_17/Pad:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_23/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????²
max_pooling2d_21/MaxPoolMaxPool activation_23/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_18/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_18/PadPad!max_pooling2d_21/MaxPool:output:0'zero_padding2d_18/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ζ
conv2d_22/Conv2DConv2Dzero_padding2d_18/Pad:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_24/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????²
max_pooling2d_22/MaxPoolMaxPool activation_24/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

zero_padding2d_19/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ’
zero_padding2d_19/PadPad!max_pooling2d_22/MaxPool:output:0'zero_padding2d_19/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ζ
conv2d_23/Conv2DConv2Dzero_padding2d_19/Pad:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? p
activation_25/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ²
max_pooling2d_23/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    
flatten/ReshapeReshape!max_pooling2d_23/MaxPool:output:0flatten/Const:output:0*
T0*'
_output_shapes
:????????? 
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?
dropout_2/dropout/MulMuldense_4/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:?????????_
dropout_2/dropout/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:‘
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ε
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
activation_26/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentityactivation_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Ύ
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp)^layer_normalization_8/add/ReadVariableOp+^layer_normalization_8/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2T
(layer_normalization_8/add/ReadVariableOp(layer_normalization_8/add/ReadVariableOp2X
*layer_normalization_8/mul_4/ReadVariableOp*layer_normalization_8/mul_4/ReadVariableOp:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ί
M
1__inference_zero_padding2d_19_layer_call_fn_58121

inputs
identityΪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
άk
μ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57208

inputs*
conv2d_18_57142:
conv2d_18_57144:	*
layer_normalization_8_57148:	*
layer_normalization_8_57150:	*
conv2d_19_57155:`
conv2d_19_57157:`)
conv2d_20_57163:``
conv2d_20_57165:`)
conv2d_21_57171:`
conv2d_21_57173:)
conv2d_22_57179:
conv2d_22_57181:)
conv2d_23_57187: 
conv2d_23_57189:  
dense_4_57195:	 
dense_4_57197:	 
dense_5_57201:	
dense_5_57203:
identity’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’!conv2d_23/StatefulPartitionedCall’dense_4/StatefulPartitionedCall’dense_5/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’-layer_normalization_8/StatefulPartitionedCallϊ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_57142conv2d_18_57144*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644ξ
activation_20/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_56655Κ
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0layer_normalization_8_57148layer_normalization_8_57150*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709
 max_pooling2d_18/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499υ
!zero_padding2d_15/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_15/PartitionedCall:output:0conv2d_19_57155conv2d_19_57157*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727ν
activation_21/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_56738ο
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524τ
!zero_padding2d_16/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_16/PartitionedCall:output:0conv2d_20_57163conv2d_20_57165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752ν
activation_22/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_56763ο
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549τ
!zero_padding2d_17/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_17/PartitionedCall:output:0conv2d_21_57171conv2d_21_57173*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777ν
activation_23/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_56788ο
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574τ
!zero_padding2d_18/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_18/PartitionedCall:output:0conv2d_22_57179conv2d_22_57181*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802ν
activation_24/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_24_layer_call_and_return_conditional_losses_56813ο
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599τ
!zero_padding2d_19/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_19/PartitionedCall:output:0conv2d_23_57187conv2d_23_57189*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827ν
activation_25/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_25_layer_call_and_return_conditional_losses_56838ο
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624Ψ
flatten/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
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
GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_56847
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_57195dense_4_57197*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_56859μ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56971
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_5_57201dense_5_57203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_56882γ
activation_26/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_26_layer_call_and_return_conditional_losses_56893u
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Ά
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
©

#__inference_signature_wrapper_57475
conv2d_18_input"
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	$
	unknown_3:`
	unknown_4:`#
	unknown_5:``
	unknown_6:`#
	unknown_7:`
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13:	 

unknown_14:	

unknown_15:	

unknown_16:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_56490o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input
Μ	
υ
B__inference_dense_4_layer_call_and_return_conditional_losses_56859

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:?????????w
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
ϊ	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_56971

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_57927

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Β

'__inference_dense_4_layer_call_fn_58186

inputs
unknown:	 
	unknown_0:	
identity’StatefulPartitionedCallΨ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_56859p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
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
ϊ	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_58223

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58116

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Β
^
B__inference_flatten_layer_call_and_return_conditional_losses_56847

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:????????? X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
΄j
Θ
G__inference_sequential_3_layer_call_and_return_conditional_losses_56896

inputs*
conv2d_18_56645:
conv2d_18_56647:	*
layer_normalization_8_56710:	*
layer_normalization_8_56712:	*
conv2d_19_56728:`
conv2d_19_56730:`)
conv2d_20_56753:``
conv2d_20_56755:`)
conv2d_21_56778:`
conv2d_21_56780:)
conv2d_22_56803:
conv2d_22_56805:)
conv2d_23_56828: 
conv2d_23_56830:  
dense_4_56860:	 
dense_4_56862:	 
dense_5_56883:	
dense_5_56885:
identity’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’!conv2d_23/StatefulPartitionedCall’dense_4/StatefulPartitionedCall’dense_5/StatefulPartitionedCall’-layer_normalization_8/StatefulPartitionedCallϊ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_56645conv2d_18_56647*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56644ξ
activation_20/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_56655Κ
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0layer_normalization_8_56710layer_normalization_8_56712*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_56709
 max_pooling2d_18/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56499υ
!zero_padding2d_15/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_15/PartitionedCall:output:0conv2d_19_56728conv2d_19_56730*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56727ν
activation_21/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_56738ο
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56524τ
!zero_padding2d_16/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_16/PartitionedCall:output:0conv2d_20_56753conv2d_20_56755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56752ν
activation_22/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_56763ο
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549τ
!zero_padding2d_17/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_56562
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_17/PartitionedCall:output:0conv2d_21_56778conv2d_21_56780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777ν
activation_23/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_56788ο
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56574τ
!zero_padding2d_18/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_18/PartitionedCall:output:0conv2d_22_56803conv2d_22_56805*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802ν
activation_24/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_24_layer_call_and_return_conditional_losses_56813ο
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56599τ
!zero_padding2d_19/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_19/PartitionedCall:output:0conv2d_23_56828conv2d_23_56830*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_56827ν
activation_25/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_25_layer_call_and_return_conditional_losses_56838ο
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624Ψ
flatten/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
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
GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_56847
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_56860dense_4_56862*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_56859ά
dropout_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_56870
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_5_56883dense_5_56885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_56882γ
activation_26/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_26_layer_call_and_return_conditional_losses_56893u
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
μ
d
H__inference_activation_21_layer_call_and_return_conditional_losses_57956

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????`b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
¨

ύ
D__inference_conv2d_23_layer_call_and_return_conditional_losses_58146

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
Ί
M
1__inference_zero_padding2d_16_layer_call_fn_57971

inputs
identityΪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_56537
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_56624

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ύ

,__inference_sequential_3_layer_call_fn_57516

inputs"
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	$
	unknown_3:`
	unknown_4:`#
	unknown_5:``
	unknown_6:`#
	unknown_7:`
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13:	 

unknown_14:	

unknown_15:	

unknown_16:
identity’StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_56896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_57966

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ε
I
-__inference_activation_22_layer_call_fn_58001

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_56763h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????`:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
Ί
M
1__inference_zero_padding2d_15_layer_call_fn_57921

inputs
identityΪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_56512
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ω

,__inference_sequential_3_layer_call_fn_57288
conv2d_18_input"
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	$
	unknown_3:`
	unknown_4:`#
	unknown_5:``
	unknown_6:`#
	unknown_7:`
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13:	 

unknown_14:	

unknown_15:	

unknown_16:
identity’StatefulPartitionedCallΌ
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57208o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:?????????γγ
)
_user_specified_nameconv2d_18_input
Υ)
υ
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_57906

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:u
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*0
_output_shapes
:?????????88o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0y
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????88r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????88: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
μ
d
H__inference_activation_23_layer_call_and_return_conditional_losses_58056

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_21_layer_call_fn_58036

inputs!
unknown:`
	unknown_0:
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56777w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????`
 
_user_specified_nameinputs
κ

)__inference_conv2d_22_layer_call_fn_58086

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56802w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
Ι
I
-__inference_activation_20_layer_call_fn_57840

inputs
identityΌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_56655i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????88:X T
0
_output_shapes
:?????????88
 
_user_specified_nameinputs
Ρ
d
H__inference_activation_26_layer_call_and_return_conditional_losses_56893

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_58166

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ύ

,__inference_sequential_3_layer_call_fn_57557

inputs"
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	$
	unknown_3:`
	unknown_4:`#
	unknown_5:``
	unknown_6:`#
	unknown_7:`
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13:	 

unknown_14:	

unknown_15:	

unknown_16:
identity’StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57208o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????γγ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????γγ
 
_user_specified_nameinputs
Ί
M
1__inference_zero_padding2d_18_layer_call_fn_58071

inputs
identityΪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_56587
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_20_layer_call_fn_58011

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56549
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ε
I
-__inference_activation_25_layer_call_fn_58151

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_25_layer_call_and_return_conditional_losses_56838h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
κ
h
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_56612

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ρ
d
H__inference_activation_26_layer_call_and_return_conditional_losses_58252

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"΅	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Κ
serving_defaultΆ
U
conv2d_18_inputB
!serving_default_conv2d_18_input:0?????????γγA
activation_260
StatefulPartitionedCall:0?????????tensorflow/serving/predict:Ο
ά
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
layer-18
layer-19
layer-20
layer_with_weights-6
layer-21
layer-22
layer-23
layer-24
layer_with_weights-7
layer-25
layer-26
layer_with_weights-8
layer-27
layer-28
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_default_save_signature
%	optimizer
&
signatures"
_tf_keras_sequential
έ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
₯
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
Δ
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<axis
	=gamma
>beta"
_tf_keras_layer
₯
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
₯
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
₯
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
¦
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+‘&call_and_return_all_conditional_losses
’kernel
	£bias
!€_jit_compiled_convolution_op"
_tf_keras_layer
«
₯	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ͺ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
«	variables
¬trainable_variables
­regularization_losses
?	keras_api
―__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
«
±	variables
²trainable_variables
³regularization_losses
΄	keras_api
΅__call__
+Ά&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
·	variables
Έtrainable_variables
Ήregularization_losses
Ί	keras_api
»__call__
+Ό&call_and_return_all_conditional_losses
½kernel
	Ύbias
!Ώ_jit_compiled_convolution_op"
_tf_keras_layer
«
ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Ι	keras_api
Κ__call__
+Λ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Μ	variables
Νtrainable_variables
Ξregularization_losses
Ο	keras_api
Π__call__
+Ρ&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
?	variables
Σtrainable_variables
Τregularization_losses
Υ	keras_api
Φ__call__
+Χ&call_and_return_all_conditional_losses
Ψkernel
	Ωbias"
_tf_keras_layer
Γ
Ϊ	variables
Ϋtrainable_variables
άregularization_losses
έ	keras_api
ή__call__
+ί&call_and_return_all_conditional_losses
ΰ_random_generator"
_tf_keras_layer
Γ
α	variables
βtrainable_variables
γregularization_losses
δ	keras_api
ε__call__
+ζ&call_and_return_all_conditional_losses
ηkernel
	θbias"
_tf_keras_layer
«
ι	variables
κtrainable_variables
λregularization_losses
μ	keras_api
ν__call__
+ξ&call_and_return_all_conditional_losses"
_tf_keras_layer
°
-0
.1
=2
>3
Q4
R5
l6
m7
8
9
’10
£11
½12
Ύ13
Ψ14
Ω15
η16
θ17"
trackable_list_wrapper
°
-0
.1
=2
>3
Q4
R5
l6
m7
8
9
’10
£11
½12
Ύ13
Ψ14
Ω15
η16
θ17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
οnon_trainable_variables
πlayers
ρmetrics
 ςlayer_regularization_losses
σlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
$_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ν
τtrace_0
υtrace_1
φtrace_2
χtrace_32ϊ
,__inference_sequential_3_layer_call_fn_56935
,__inference_sequential_3_layer_call_fn_57516
,__inference_sequential_3_layer_call_fn_57557
,__inference_sequential_3_layer_call_fn_57288Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zτtrace_0zυtrace_1zφtrace_2zχtrace_3
Ω
ψtrace_0
ωtrace_1
ϊtrace_2
ϋtrace_32ζ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57683
G__inference_sequential_3_layer_call_and_return_conditional_losses_57816
G__inference_sequential_3_layer_call_and_return_conditional_losses_57357
G__inference_sequential_3_layer_call_and_return_conditional_losses_57426Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zψtrace_0zωtrace_1zϊtrace_2zϋtrace_3
ΣBΠ
 __inference__wrapped_model_56490conv2d_18_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ι
	όiter
ύbeta_1
ώbeta_2

?decay
learning_rate
momentum_cache-mΫ.mά=mέ>mήQmίRmΰlmαmmβ	mγ	mδ	’mε	£mζ	½mη	Ύmθ	Ψmι	Ωmκ	ηmλ	θmμ-vν.vξ=vο>vπQvρRvςlvσmvτ	vυ	vφ	’vχ	£vψ	½vω	Ύvϊ	Ψvϋ	Ωvό	ηvύ	θvώ"
	optimizer
-
serving_default"
signature_map
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_18_layer_call_fn_57825’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_57835’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
+:)2conv2d_18/kernel
:2conv2d_18/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
σ
trace_02Τ
-__inference_activation_20_layer_call_fn_57840’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ο
H__inference_activation_20_layer_call_and_return_conditional_losses_57845’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ϋ
trace_02ά
5__inference_layer_normalization_8_layer_call_fn_57854’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02χ
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_57906’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
*:(2layer_normalization_8/gamma
):'2layer_normalization_8/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_18_layer_call_fn_57911’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_57916’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
χ
€trace_02Ψ
1__inference_zero_padding2d_15_layer_call_fn_57921’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z€trace_0

₯trace_02σ
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_57927’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z₯trace_0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ο
«trace_02Π
)__inference_conv2d_19_layer_call_fn_57936’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z«trace_0

¬trace_02λ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_57946’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z¬trace_0
+:)`2conv2d_19/kernel
:`2conv2d_19/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
­non_trainable_variables
?layers
―metrics
 °layer_regularization_losses
±layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
σ
²trace_02Τ
-__inference_activation_21_layer_call_fn_57951’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z²trace_0

³trace_02ο
H__inference_activation_21_layer_call_and_return_conditional_losses_57956’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z³trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
φ
Ήtrace_02Χ
0__inference_max_pooling2d_19_layer_call_fn_57961’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΉtrace_0

Ίtrace_02ς
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_57966’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΊtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
χ
ΐtrace_02Ψ
1__inference_zero_padding2d_16_layer_call_fn_57971’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΐtrace_0

Αtrace_02σ
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_57977’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΑtrace_0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Βnon_trainable_variables
Γlayers
Δmetrics
 Εlayer_regularization_losses
Ζlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ο
Ηtrace_02Π
)__inference_conv2d_20_layer_call_fn_57986’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΗtrace_0

Θtrace_02λ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_57996’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΘtrace_0
*:(``2conv2d_20/kernel
:`2conv2d_20/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ιnon_trainable_variables
Κlayers
Λmetrics
 Μlayer_regularization_losses
Νlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
σ
Ξtrace_02Τ
-__inference_activation_22_layer_call_fn_58001’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΞtrace_0

Οtrace_02ο
H__inference_activation_22_layer_call_and_return_conditional_losses_58006’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΟtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
φ
Υtrace_02Χ
0__inference_max_pooling2d_20_layer_call_fn_58011’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΥtrace_0

Φtrace_02ς
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58016’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΦtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΄
Χnon_trainable_variables
Ψlayers
Ωmetrics
 Ϊlayer_regularization_losses
Ϋlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
χ
άtrace_02Ψ
1__inference_zero_padding2d_17_layer_call_fn_58021’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zάtrace_0

έtrace_02σ
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_58027’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zέtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ο
γtrace_02Π
)__inference_conv2d_21_layer_call_fn_58036’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zγtrace_0

δtrace_02λ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58046’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zδtrace_0
*:(`2conv2d_21/kernel
:2conv2d_21/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
σ
κtrace_02Τ
-__inference_activation_23_layer_call_fn_58051’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zκtrace_0

λtrace_02ο
H__inference_activation_23_layer_call_and_return_conditional_losses_58056’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zλtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
μnon_trainable_variables
νlayers
ξmetrics
 οlayer_regularization_losses
πlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
φ
ρtrace_02Χ
0__inference_max_pooling2d_21_layer_call_fn_58061’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zρtrace_0

ςtrace_02ς
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58066’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zςtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
σnon_trainable_variables
τlayers
υmetrics
 φlayer_regularization_losses
χlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
χ
ψtrace_02Ψ
1__inference_zero_padding2d_18_layer_call_fn_58071’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zψtrace_0

ωtrace_02σ
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_58077’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zωtrace_0
0
’0
£1"
trackable_list_wrapper
0
’0
£1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
ο
?trace_02Π
)__inference_conv2d_22_layer_call_fn_58086’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z?trace_0

trace_02λ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58096’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
*:(2conv2d_22/kernel
:2conv2d_22/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
₯	variables
¦trainable_variables
§regularization_losses
©__call__
+ͺ&call_and_return_all_conditional_losses
'ͺ"call_and_return_conditional_losses"
_generic_user_object
σ
trace_02Τ
-__inference_activation_24_layer_call_fn_58101’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ο
H__inference_activation_24_layer_call_and_return_conditional_losses_58106’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
«	variables
¬trainable_variables
­regularization_losses
―__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_22_layer_call_fn_58111’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58116’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
±	variables
²trainable_variables
³regularization_losses
΅__call__
+Ά&call_and_return_all_conditional_losses
'Ά"call_and_return_conditional_losses"
_generic_user_object
χ
trace_02Ψ
1__inference_zero_padding2d_19_layer_call_fn_58121’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02σ
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_58127’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
0
½0
Ύ1"
trackable_list_wrapper
0
½0
Ύ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
·	variables
Έtrainable_variables
Ήregularization_losses
»__call__
+Ό&call_and_return_all_conditional_losses
'Ό"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_23_layer_call_fn_58136’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_23_layer_call_and_return_conditional_losses_58146’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
*:( 2conv2d_23/kernel
: 2conv2d_23/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
  layer_regularization_losses
‘layer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses"
_generic_user_object
σ
’trace_02Τ
-__inference_activation_25_layer_call_fn_58151’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z’trace_0

£trace_02ο
H__inference_activation_25_layer_call_and_return_conditional_losses_58156’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z£trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
€non_trainable_variables
₯layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Κ__call__
+Λ&call_and_return_all_conditional_losses
'Λ"call_and_return_conditional_losses"
_generic_user_object
φ
©trace_02Χ
0__inference_max_pooling2d_23_layer_call_fn_58161’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z©trace_0

ͺtrace_02ς
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_58166’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zͺtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
«non_trainable_variables
¬layers
­metrics
 ?layer_regularization_losses
―layer_metrics
Μ	variables
Νtrainable_variables
Ξregularization_losses
Π__call__
+Ρ&call_and_return_all_conditional_losses
'Ρ"call_and_return_conditional_losses"
_generic_user_object
ν
°trace_02Ξ
'__inference_flatten_layer_call_fn_58171’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z°trace_0

±trace_02ι
B__inference_flatten_layer_call_and_return_conditional_losses_58177’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z±trace_0
0
Ψ0
Ω1"
trackable_list_wrapper
0
Ψ0
Ω1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
²non_trainable_variables
³layers
΄metrics
 ΅layer_regularization_losses
Άlayer_metrics
?	variables
Σtrainable_variables
Τregularization_losses
Φ__call__
+Χ&call_and_return_all_conditional_losses
'Χ"call_and_return_conditional_losses"
_generic_user_object
ν
·trace_02Ξ
'__inference_dense_4_layer_call_fn_58186’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z·trace_0

Έtrace_02ι
B__inference_dense_4_layer_call_and_return_conditional_losses_58196’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΈtrace_0
!:	 2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ήnon_trainable_variables
Ίlayers
»metrics
 Όlayer_regularization_losses
½layer_metrics
Ϊ	variables
Ϋtrainable_variables
άregularization_losses
ή__call__
+ί&call_and_return_all_conditional_losses
'ί"call_and_return_conditional_losses"
_generic_user_object
Η
Ύtrace_0
Ώtrace_12
)__inference_dropout_2_layer_call_fn_58201
)__inference_dropout_2_layer_call_fn_58206³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΎtrace_0zΏtrace_1
ύ
ΐtrace_0
Αtrace_12Β
D__inference_dropout_2_layer_call_and_return_conditional_losses_58211
D__inference_dropout_2_layer_call_and_return_conditional_losses_58223³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΐtrace_0zΑtrace_1
"
_generic_user_object
0
η0
θ1"
trackable_list_wrapper
0
η0
θ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Βnon_trainable_variables
Γlayers
Δmetrics
 Εlayer_regularization_losses
Ζlayer_metrics
α	variables
βtrainable_variables
γregularization_losses
ε__call__
+ζ&call_and_return_all_conditional_losses
'ζ"call_and_return_conditional_losses"
_generic_user_object
ν
Ηtrace_02Ξ
'__inference_dense_5_layer_call_fn_58232’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΗtrace_0

Θtrace_02ι
B__inference_dense_5_layer_call_and_return_conditional_losses_58242’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΘtrace_0
!:	2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ιnon_trainable_variables
Κlayers
Λmetrics
 Μlayer_regularization_losses
Νlayer_metrics
ι	variables
κtrainable_variables
λregularization_losses
ν__call__
+ξ&call_and_return_all_conditional_losses
'ξ"call_and_return_conditional_losses"
_generic_user_object
σ
Ξtrace_02Τ
-__inference_activation_26_layer_call_fn_58247’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΞtrace_0

Οtrace_02ο
H__inference_activation_26_layer_call_and_return_conditional_losses_58252’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΟtrace_0
 "
trackable_list_wrapper
ώ
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
24
25
26
27
28"
trackable_list_wrapper
0
Π0
Ρ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_3_layer_call_fn_56935conv2d_18_input"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ύBϊ
,__inference_sequential_3_layer_call_fn_57516inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ύBϊ
,__inference_sequential_3_layer_call_fn_57557inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
,__inference_sequential_3_layer_call_fn_57288conv2d_18_input"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_57683inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_57816inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
‘B
G__inference_sequential_3_layer_call_and_return_conditional_losses_57357conv2d_18_input"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
‘B
G__inference_sequential_3_layer_call_and_return_conditional_losses_57426conv2d_18_input"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
?BΟ
#__inference_signature_wrapper_57475conv2d_18_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_18_layer_call_fn_57825inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_57835inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_20_layer_call_fn_57840inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_20_layer_call_and_return_conditional_losses_57845inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ιBζ
5__inference_layer_normalization_8_layer_call_fn_57854inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_57906inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_18_layer_call_fn_57911inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_57916inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
εBβ
1__inference_zero_padding2d_15_layer_call_fn_57921inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bύ
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_57927inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_19_layer_call_fn_57936inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_57946inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_21_layer_call_fn_57951inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_21_layer_call_and_return_conditional_losses_57956inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_19_layer_call_fn_57961inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_57966inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
εBβ
1__inference_zero_padding2d_16_layer_call_fn_57971inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bύ
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_57977inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_20_layer_call_fn_57986inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_57996inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_22_layer_call_fn_58001inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_22_layer_call_and_return_conditional_losses_58006inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_20_layer_call_fn_58011inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58016inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
εBβ
1__inference_zero_padding2d_17_layer_call_fn_58021inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bύ
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_58027inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_21_layer_call_fn_58036inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58046inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_23_layer_call_fn_58051inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_23_layer_call_and_return_conditional_losses_58056inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_21_layer_call_fn_58061inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58066inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
εBβ
1__inference_zero_padding2d_18_layer_call_fn_58071inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bύ
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_58077inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_22_layer_call_fn_58086inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58096inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_24_layer_call_fn_58101inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_24_layer_call_and_return_conditional_losses_58106inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_22_layer_call_fn_58111inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58116inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
εBβ
1__inference_zero_padding2d_19_layer_call_fn_58121inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bύ
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_58127inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_23_layer_call_fn_58136inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_23_layer_call_and_return_conditional_losses_58146inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_25_layer_call_fn_58151inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_25_layer_call_and_return_conditional_losses_58156inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_23_layer_call_fn_58161inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_58166inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΫBΨ
'__inference_flatten_layer_call_fn_58171inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_flatten_layer_call_and_return_conditional_losses_58177inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΫBΨ
'__inference_dense_4_layer_call_fn_58186inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_dense_4_layer_call_and_return_conditional_losses_58196inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ξBλ
)__inference_dropout_2_layer_call_fn_58201inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξBλ
)__inference_dropout_2_layer_call_fn_58206inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_58211inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_58223inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΫBΨ
'__inference_dense_5_layer_call_fn_58232inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_dense_5_layer_call_and_return_conditional_losses_58242inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
αBή
-__inference_activation_26_layer_call_fn_58247inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_26_layer_call_and_return_conditional_losses_58252inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
R
?	variables
Σ	keras_api

Τtotal

Υcount"
_tf_keras_metric
c
Φ	variables
Χ	keras_api

Ψtotal

Ωcount
Ϊ
_fn_kwargs"
_tf_keras_metric
0
Τ0
Υ1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
Ψ0
Ω1"
trackable_list_wrapper
.
Φ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
1:/2Nadam/conv2d_18/kernel/m
#:!2Nadam/conv2d_18/bias/m
0:.2#Nadam/layer_normalization_8/gamma/m
/:-2"Nadam/layer_normalization_8/beta/m
1:/`2Nadam/conv2d_19/kernel/m
": `2Nadam/conv2d_19/bias/m
0:.``2Nadam/conv2d_20/kernel/m
": `2Nadam/conv2d_20/bias/m
0:.`2Nadam/conv2d_21/kernel/m
": 2Nadam/conv2d_21/bias/m
0:.2Nadam/conv2d_22/kernel/m
": 2Nadam/conv2d_22/bias/m
0:. 2Nadam/conv2d_23/kernel/m
":  2Nadam/conv2d_23/bias/m
':%	 2Nadam/dense_4/kernel/m
!:2Nadam/dense_4/bias/m
':%	2Nadam/dense_5/kernel/m
 :2Nadam/dense_5/bias/m
1:/2Nadam/conv2d_18/kernel/v
#:!2Nadam/conv2d_18/bias/v
0:.2#Nadam/layer_normalization_8/gamma/v
/:-2"Nadam/layer_normalization_8/beta/v
1:/`2Nadam/conv2d_19/kernel/v
": `2Nadam/conv2d_19/bias/v
0:.``2Nadam/conv2d_20/kernel/v
": `2Nadam/conv2d_20/bias/v
0:.`2Nadam/conv2d_21/kernel/v
": 2Nadam/conv2d_21/bias/v
0:.2Nadam/conv2d_22/kernel/v
": 2Nadam/conv2d_22/bias/v
0:. 2Nadam/conv2d_23/kernel/v
":  2Nadam/conv2d_23/bias/v
':%	 2Nadam/dense_4/kernel/v
!:2Nadam/dense_4/bias/v
':%	2Nadam/dense_5/kernel/v
 :2Nadam/dense_5/bias/vΖ
 __inference__wrapped_model_56490‘-.=>QRlm’£½ΎΨΩηθB’?
8’5
30
conv2d_18_input?????????γγ
ͺ "=ͺ:
8
activation_26'$
activation_26?????????Ά
H__inference_activation_20_layer_call_and_return_conditional_losses_57845j8’5
.’+
)&
inputs?????????88
ͺ ".’+
$!
0?????????88
 
-__inference_activation_20_layer_call_fn_57840]8’5
.’+
)&
inputs?????????88
ͺ "!?????????88΄
H__inference_activation_21_layer_call_and_return_conditional_losses_57956h7’4
-’*
(%
inputs?????????`
ͺ "-’*
# 
0?????????`
 
-__inference_activation_21_layer_call_fn_57951[7’4
-’*
(%
inputs?????????`
ͺ " ?????????`΄
H__inference_activation_22_layer_call_and_return_conditional_losses_58006h7’4
-’*
(%
inputs?????????`
ͺ "-’*
# 
0?????????`
 
-__inference_activation_22_layer_call_fn_58001[7’4
-’*
(%
inputs?????????`
ͺ " ?????????`΄
H__inference_activation_23_layer_call_and_return_conditional_losses_58056h7’4
-’*
(%
inputs?????????
ͺ "-’*
# 
0?????????
 
-__inference_activation_23_layer_call_fn_58051[7’4
-’*
(%
inputs?????????
ͺ " ?????????΄
H__inference_activation_24_layer_call_and_return_conditional_losses_58106h7’4
-’*
(%
inputs?????????
ͺ "-’*
# 
0?????????
 
-__inference_activation_24_layer_call_fn_58101[7’4
-’*
(%
inputs?????????
ͺ " ?????????΄
H__inference_activation_25_layer_call_and_return_conditional_losses_58156h7’4
-’*
(%
inputs????????? 
ͺ "-’*
# 
0????????? 
 
-__inference_activation_25_layer_call_fn_58151[7’4
-’*
(%
inputs????????? 
ͺ " ????????? €
H__inference_activation_26_layer_call_and_return_conditional_losses_58252X/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 |
-__inference_activation_26_layer_call_fn_58247K/’,
%’"
 
inputs?????????
ͺ "?????????·
D__inference_conv2d_18_layer_call_and_return_conditional_losses_57835o-.9’6
/’,
*'
inputs?????????γγ
ͺ ".’+
$!
0?????????88
 
)__inference_conv2d_18_layer_call_fn_57825b-.9’6
/’,
*'
inputs?????????γγ
ͺ "!?????????88΅
D__inference_conv2d_19_layer_call_and_return_conditional_losses_57946mQR8’5
.’+
)&
inputs?????????  
ͺ "-’*
# 
0?????????`
 
)__inference_conv2d_19_layer_call_fn_57936`QR8’5
.’+
)&
inputs?????????  
ͺ " ?????????`΄
D__inference_conv2d_20_layer_call_and_return_conditional_losses_57996llm7’4
-’*
(%
inputs?????????`
ͺ "-’*
# 
0?????????`
 
)__inference_conv2d_20_layer_call_fn_57986_lm7’4
-’*
(%
inputs?????????`
ͺ " ?????????`Ά
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58046n7’4
-’*
(%
inputs?????????`
ͺ "-’*
# 
0?????????
 
)__inference_conv2d_21_layer_call_fn_58036a7’4
-’*
(%
inputs?????????`
ͺ " ?????????Ά
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58096n’£7’4
-’*
(%
inputs?????????
ͺ "-’*
# 
0?????????
 
)__inference_conv2d_22_layer_call_fn_58086a’£7’4
-’*
(%
inputs?????????
ͺ " ?????????Ά
D__inference_conv2d_23_layer_call_and_return_conditional_losses_58146n½Ύ7’4
-’*
(%
inputs?????????
ͺ "-’*
# 
0????????? 
 
)__inference_conv2d_23_layer_call_fn_58136a½Ύ7’4
-’*
(%
inputs?????????
ͺ " ????????? ₯
B__inference_dense_4_layer_call_and_return_conditional_losses_58196_ΨΩ/’,
%’"
 
inputs????????? 
ͺ "&’#

0?????????
 }
'__inference_dense_4_layer_call_fn_58186RΨΩ/’,
%’"
 
inputs????????? 
ͺ "?????????₯
B__inference_dense_5_layer_call_and_return_conditional_losses_58242_ηθ0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????
 }
'__inference_dense_5_layer_call_fn_58232Rηθ0’-
&’#
!
inputs?????????
ͺ "?????????¦
D__inference_dropout_2_layer_call_and_return_conditional_losses_58211^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 ¦
D__inference_dropout_2_layer_call_and_return_conditional_losses_58223^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 ~
)__inference_dropout_2_layer_call_fn_58201Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????~
)__inference_dropout_2_layer_call_fn_58206Q4’1
*’'
!
inputs?????????
p
ͺ "?????????¦
B__inference_flatten_layer_call_and_return_conditional_losses_58177`7’4
-’*
(%
inputs????????? 
ͺ "%’"

0????????? 
 ~
'__inference_flatten_layer_call_fn_58171S7’4
-’*
(%
inputs????????? 
ͺ "????????? Β
P__inference_layer_normalization_8_layer_call_and_return_conditional_losses_57906n=>8’5
.’+
)&
inputs?????????88
ͺ ".’+
$!
0?????????88
 
5__inference_layer_normalization_8_layer_call_fn_57854a=>8’5
.’+
)&
inputs?????????88
ͺ "!?????????88ξ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_57916R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_18_layer_call_fn_57911R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_57966R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_19_layer_call_fn_57961R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58016R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_20_layer_call_fn_58011R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58066R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_21_layer_call_fn_58061R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58116R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_22_layer_call_fn_58111R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_58166R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_23_layer_call_fn_58161R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????έ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57357-.=>QRlm’£½ΎΨΩηθJ’G
@’=
30
conv2d_18_input?????????γγ
p 

 
ͺ "%’"

0?????????
 έ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57426-.=>QRlm’£½ΎΨΩηθJ’G
@’=
30
conv2d_18_input?????????γγ
p

 
ͺ "%’"

0?????????
 Τ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57683-.=>QRlm’£½ΎΨΩηθA’>
7’4
*'
inputs?????????γγ
p 

 
ͺ "%’"

0?????????
 Τ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57816-.=>QRlm’£½ΎΨΩηθA’>
7’4
*'
inputs?????????γγ
p

 
ͺ "%’"

0?????????
 ΅
,__inference_sequential_3_layer_call_fn_56935-.=>QRlm’£½ΎΨΩηθJ’G
@’=
30
conv2d_18_input?????????γγ
p 

 
ͺ "?????????΅
,__inference_sequential_3_layer_call_fn_57288-.=>QRlm’£½ΎΨΩηθJ’G
@’=
30
conv2d_18_input?????????γγ
p

 
ͺ "?????????«
,__inference_sequential_3_layer_call_fn_57516{-.=>QRlm’£½ΎΨΩηθA’>
7’4
*'
inputs?????????γγ
p 

 
ͺ "?????????«
,__inference_sequential_3_layer_call_fn_57557{-.=>QRlm’£½ΎΨΩηθA’>
7’4
*'
inputs?????????γγ
p

 
ͺ "?????????ά
#__inference_signature_wrapper_57475΄-.=>QRlm’£½ΎΨΩηθU’R
’ 
KͺH
F
conv2d_18_input30
conv2d_18_input?????????γγ"=ͺ:
8
activation_26'$
activation_26?????????ο
L__inference_zero_padding2d_15_layer_call_and_return_conditional_losses_57927R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_zero_padding2d_15_layer_call_fn_57921R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ο
L__inference_zero_padding2d_16_layer_call_and_return_conditional_losses_57977R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_zero_padding2d_16_layer_call_fn_57971R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ο
L__inference_zero_padding2d_17_layer_call_and_return_conditional_losses_58027R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_zero_padding2d_17_layer_call_fn_58021R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ο
L__inference_zero_padding2d_18_layer_call_and_return_conditional_losses_58077R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_zero_padding2d_18_layer_call_fn_58071R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ο
L__inference_zero_padding2d_19_layer_call_and_return_conditional_losses_58127R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_zero_padding2d_19_layer_call_fn_58121R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????