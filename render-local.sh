#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f private.env ]]; then
  echo "Missing private.env, create from private.env.example."
  exit 1
fi

set -a
source ./private.env
set +a

rendercv render General_CV.yaml --cv.phone "$CV_PHONE"
rendercv render Information_Technology_CV.yaml --cv.phone "$CV_PHONE"
rendercv render Software_Development_CV.yaml --cv.phone "$CV_PHONE"
rendercv render Cover_Letter.yaml --cv.phone "$CV_PHONE"
rendercv render Letter_of_Recommendation_1.yaml
rendercv render Letter_of_Recommendation_2.yaml
rendercv render Letter_of_Recommendation_3.yaml