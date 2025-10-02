;; ------------------------------------------------------
;; Payroll Contract
;; Employer sets employee salaries. Employees can withdraw.
;; ------------------------------------------------------

(define-map payroll
  {employee: principal}
  {amount: uint})

;; ------------------------------------------------------
;; Public Functions
;; ------------------------------------------------------

;; Employer sets or updates salary for an employee
(define-public (set-salary (employee principal) (amount uint))
  (let 
    ((validated-employee {employee: employee})
     (validated-amount {amount: amount}))
    (begin 
      (map-set payroll validated-employee validated-amount)
      (ok true))))

;; Employee withdraws their salary
(define-public (withdraw-salary)
  (let ((salary (map-get? payroll {employee: tx-sender})))
    (match salary data
      (begin 
        (stx-transfer? (get amount data) tx-sender tx-sender))
      (err u0))))

;; ------------------------------------------------------
;; Read-only Functions
;; ------------------------------------------------------

;; Get salary assigned to an employee
(define-read-only (get-salary (employee principal))
  (default-to {amount: u0} (map-get? payroll {employee: employee})))

;; Get all payroll info for caller
(define-read-only (my-salary)
  (default-to {amount: u0} (map-get? payroll {employee: tx-sender})))
