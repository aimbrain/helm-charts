#!/usr/bin/env bash
for chart in $(cat charts.list); do
  helm package $chart
  mv $chart-1.0.0.tgz docs
done
helm repo index docs --url http://aimbrain.github.io/helm-charts/
