
## used as the entry point from the runlocal batch command line

import sys
from vqgan import fn_run

args=sys.argv[1:]
fn_run(args)
