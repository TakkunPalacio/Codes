
#Assignment State confirmation program

def state_table(Qa,Qb,Qc,X):
    Sa = Qb and X 
    Ra = 0

    Sb = not Qa and not Qb and X
    Rb = Qb and X or Qb and Qc

    Sc = not Qc and not X
    Rc = Qc and X or Qa and Qc

    Qan = Sa or Qa and not Ra
    Qbn = Sb or Qb and not Rb
    Qcn = Sc or Qc and not Rc

    Y = Qa and X
    
    #SR excitation table
    #Qn Qn+1 S R
    # 0   0  0 x
    # 0   1  1 0
    # 1   0  0 1
    # 1   1  x 0

    Qan = str(int(Qan))
    Qbn = str(int(Qbn))
    Qcn = str(int(Qcn))
    
    res = [Qa,Qb,Qc,X,Qan,Qbn,Qcn,Y]
    
    print(res)

def jk_find(q1,q0,x1,x0):
    s1 = not q1 and x1
    r1 = q1 and (x1 and (q0 ^ x0))
    s0 = not q0 and not x1
    r0 = (not x1 and (q1 ^ q0)) or (q1 and not q0 and not x0)
    y = (~(q1^x0)) and x1
    qn1 = s1 or not r1 and q1
    qn0 = s0 or not r0 and q0
    qn1 = str(int(qn1))
    qn0 = str(int(qn0))
    y = str(int(y))
    res = [q1,q0,x1,x0,qn1,qn0,y]
    print(res)

jk_find(0,0,0,1)
jk_find(0,0,1,0)
jk_find(0,0,1,1)
jk_find(0,1,0,1)
jk_find(0,1,1,0)
jk_find(0,1,1,1)
jk_find(1,0,0,1)
jk_find(1,0,1,0)
jk_find(1,0,1,1)
jk_find(1,1,0,1)
jk_find(1,1,1,0)
jk_find(1,1,1,1)


# def jk_find(q1,q0,x):
#     j1 = not q1 and (q0^x)
#     k1 = q1 and not (q0^x)
#     j0 = q1 and not q0 and not x
#     k0 = not q1 and q0 and not x
#     y = not q1 or q0
#     qn1 = j1 and not q1 or not k1 and q1
#     qn0 = j0 and not q0 or not k0 and q0
#     qn1 = str(int(qn1))
#     qn0 = str(int(qn0))
#     y = str(int(y))
#     res = [q1,q0,x,qn1,qn0,y]
#     print(res)
    
# jk_find(0,0,0)
# jk_find(0,0,1)
# jk_find(0,1,0)
# jk_find(0,1,1)
# jk_find(1,0,0)
# jk_find(1,0,1)
# jk_find(1,1,0)
# jk_find(1,1,1)