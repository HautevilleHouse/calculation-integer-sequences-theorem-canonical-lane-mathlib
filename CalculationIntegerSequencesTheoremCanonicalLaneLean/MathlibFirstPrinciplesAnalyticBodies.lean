import Mathlib.Data.Nat.Fib
import Mathlib.Data.Nat.Factorial

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

theorem mathlib_fibonacci_recurrence : ∀ n : ℕ, (Nat.fib (n+2)) = (Nat.fib (n+1)) + (Nat.fib n) :=
  by
    intro n
    exact Nat.fib_add_two n

theorem mathlib_factorial_recurrence : ∀ n : ℕ, (Nat.factorial (n+1)) = (n+1) * (Nat.factorial n) :=
  by
    intro n
    exact Nat.factorial_succ n

structure MathlibAvailableAnalyticBodies where
  fibonacciRecurrenceAvailable : Prop
  factorialRecurrenceAvailable : Prop
  fibonacciRecurrenceTerm : fibonacciRecurrenceAvailable
  factorialRecurrenceTerm : factorialRecurrenceAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { fibonacciRecurrenceAvailable := True,
    factorialRecurrenceAvailable := True,
    fibonacciRecurrenceTerm := trivial,
    factorialRecurrenceTerm := trivial }

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse