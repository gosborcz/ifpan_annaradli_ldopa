#!/bin/bash
for SAMPLE in L10starL L10starP L11starL L11starP L1starP L1starP L23L L23P L2starL L2starP L32L L32P L39L L39P L4starL L4starP L5starP L5starL L6starL L6starP
do sudo mv "$PWD/$SAMPLE.sort.bam/abundances.cxb" "$PWD/$SAMPLE-abundances.cxb"
done

docker run -d --rm -v $PWD:/data octavianus90/cufflinks_final:latest cuffdiff -o /data/cuffdiff/LctrlOHDA-vs-LexpLDOPA -L ctrlOHDA,expLDOPA /data/rn6-ind/Rattus_norvegicus.Rnor_6.0.90.gtf /data/cuffquant/L10starL-abundances.cxb,/data/cuffquant/L11starL-abundances.cxb,/data/cuffquant/L23L-abundances.cxb,/data/cuffquant/L32L-abundances.cxb,/data/cuffquant/L39L-abundances.cxb /data/cuffquant/L1starL-abundances.cxb,/data/cuffquant/L2starL-abundances.cxb,/data/cuffquant/L4starL-abundances.cxb,/data/cuffquant/L5starL-abundances.cxb,/data/cuffquant/L6starL-abundances.cxb

docker run -d --rm -v $PWD:/data octavianus90/cufflinks_final:latest cuffdiff -o /data/cuffdiff/PctrlOHDA-vs-PexpLDOPA -L ctrlOHDA,expLDOPA /data/rn6-ind/Rattus_norvegicus.Rnor_6.0.90.gtf /data/cuffquant/L10starP-abundances.cxb,/data/cuffquant/L11starP-abundances.cxb,/data/cuffquant/L23P-abundances.cxb,/data/cuffquant/L32P-abundances.cxb,/data/cuffquant/L39P-abundances.cxb /data/cuffquant/L1starP-abundances.cxb,/data/cuffquant/L2starP-abundances.cxb,/data/cuffquant/L4starP-abundances.cxb,/data/cuffquant/L5starP-abundances.cxb,/data/cuffquant/L6starP-abundances.cxb

docker run -d --rm -v $PWD:/data octavianus90/cufflinks_final:latest cuffdiff -o /data/cuffdiff/PctrlOHDA-vs-LctrlOHDA -L ctrlP,ctrL /data/rn6-ind/Rattus_norvegicus.Rnor_6.0.90.gtf /data/cuffquant/L10starP-abundances.cxb,/data/cuffquant/L11starP-abundances.cxb,/data/cuffquant/L23P-abundances.cxb,/data/cuffquant/L32P-abundances.cxb,/data/cuffquant/L39P-abundances.cxb /data/cuffquant/L10starL-abundances.cxb,/data/cuffquant/L11starL-abundances.cxb,/data/cuffquant/L23L-abundances.cxb,/data/cuffquant/L32L-abundances.cxb,/data/cuffquant/L39L-abundances.cxb

docker run -d --rm -v $PWD:/data octavianus90/cufflinks_final:latest cuffdiff -o /data/cuffdiff/PexpLDOPA-vs-LexpLDOPA -L expP,expL /data/rn6-ind/Rattus_norvegicus.Rnor_6.0.90.gtf /data/cuffquant/L1starP-abundances.cxb,/data/cuffquant/L2starP-abundances.cxb,/data/cuffquant/L4starP-abundances.cxb,/data/cuffquant/L5starP-abundances.cxb,/data/cuffquant/L6starP-abundances.cxb /data/cuffquant/L1starL-abundances.cxb,/data/cuffquant/L2starL-abundances.cxb,/data/cuffquant/L4starL-abundances.cxb,/data/cuffquant/L5starL-abundances.cxb,/data/cuffquant/L6starL-abundances.cxb
