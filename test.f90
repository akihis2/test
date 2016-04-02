! Simple Program to Test Sage Math Cloud

! Define Function square
MODULE mlib_test
  IMPLICIT NONE

  INTERFACE square
    MODULE PROCEDURE square_r
    MODULE PROCEDURE square_s
  END INTERFACE square

CONTAINS
  ELEMENTAL FUNCTION square_r(x)
    REAL, INTENT(IN) :: x
    REAL :: square_r
    
    square_r = x**2
  
  END FUNCTION square_r

  ELEMENTAL FUNCTION square_s(x)
    INTEGER, INTENT(IN) :: x
    INTEGER :: square_s
    
    square_s = x**2
  
  END FUNCTION square_s

END MODULE mlib_test


! Test Function square by computing square for test cases
PROGRAM main
  USE mlib_test
  IMPLICIT NONE
  INTEGER :: i
  REAL, DIMENSION(5) :: x = [(i,i=1,5)]

  WRITE (*,*) 'square(2) =  ', square(2)
  WRITE (*,*) 'square(2.) = ', square(2.)
  WRITE (*,'(1x,A,5(F6.3,2x))') 'x =         ', x
  WRITE (*,'(1x,A,5(F6.3,2x))') 'square(x) = ', square(x)

END PROGRAM main
