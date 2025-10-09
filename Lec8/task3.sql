SELECT * FROM job_history
WHERE job_id IN (SELECT job_id FROM jobs WHERE job_id IN ('AD_ASST','FI_MGR','FI_ACCOUNT','AC_MGR','AC_ACCOUNT','SA_MAN','SA_REP','PU_MAN'));

SELECT * FROM departments
WHERE department_name IN (SELECT department_name FROM departments WHERE department_name IN ('administration','marketing','purchasing','human resources','shipping'));
