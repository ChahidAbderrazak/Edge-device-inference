# --------------------------------------------------------------------------------------------------
import os
import sys
import pytest
sys.path
sys.path.append("src")

# check if we are on GITHUB_ACTIONS
IN_GITHUB_ACTIONS = os.getenv("GITHUB_ACTIONS") == "true"


@pytest.mark.skipif(IN_GITHUB_ACTIONS, reason="Test doesn't work in Github Actions.")
# @pytest.mark.skipif(sys.version_info < (3, 8), reason="Requires Python 3.8 or later.")
class Test_module1:
    def test_main(self):
        assert True
