hubtrics=~/Projects/hubtrics

alias label="cd $hubtrics;bin/apply_labels --repository"
alias analyze="cd $hubtrics;bin/analyze --repository"
alias analyze_all="analyze verifyvalid/verifyvalid ; analyze verifyvalid/vv_registrar ; analyze verifyvalid/check_engine ; analyze verifyvalid/check_engine_pci ; analyze verifyvalid/vv_internal_api_client"
