import numpy as np
from scipy.linalg import lstsq

cloud = np.asarray(cloud)
A = np.c_[cloud[:,0], cloud[:,1], np.ones(cloud.shape[0])]
b = cloud[:,2]
C, _, _, _ = lstsq(A, b)
a, b, c, d = C[0], C[1], -1., C[2] # coefficients of the form: a*x + b*y + c*z + d = 0.
dist = ((a*cloud[:,0] + b*cloud[:,1] + d) - cloud[:,2])**2
err = dist.sum()
idx = np.where(dist > 0.01)
