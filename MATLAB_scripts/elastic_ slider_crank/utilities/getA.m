function A_K = getA(K)

A_K = [       0, -K(1), -K(2), -K(3)
    K(1),         0,  K(3), -K(2)
    K(2), -K(3),         0,  K(1)
    K(3),  K(2), -K(1),        0];

end