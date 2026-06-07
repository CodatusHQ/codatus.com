---
layout: post
title: Who's watching private repos turn public? We leaked 75 AWS keys to find out
description: We made 75 GitHub repos public on a timer and logged who came. The internet finds a public repo in 6 minutes, and without enterprise tools, you'd never know it flipped.
og_image: /og/we-leaked-75-aws-keys-to-see-who-watches-public-repos.png
subscribe_heading: ""
subscribe_body: ""
subscribe_button: "Reserve early access"
subscribe_form_id: "9533751"
---

Make a private repo public and it stays undiscovered for 6 minutes. Past that, the internet is reading it. We put a live AWS key in 75 throwaway repos, made each public for one of five timed windows from 60 seconds to 12 hours, 15 repos per window, and logged every use. The key was just a tripwire. What we wanted to know is how long it takes anyone watching to notice, and what their intent is once they have.

What follows are the answers, and then the part that matters more for most teams: without enterprise tooling, the repo could go public and nobody would reliably hear of it.

## How fast the watchers noticed, and with what intent

Each dot in the chart below is one time something touched a key, placed by how long after the repo went public it landed, on a log scale. Hover any dot for the detail.

<div class="post-scatter">
  <div class="post-scatter-canvas"><canvas id="canary-scatter"></canvas></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.min.js"></script>
<script>
(function () {
  var ctx = document.getElementById("canary-scatter");
  if (!ctx || typeof Chart === "undefined") return;
  var PROBED = [{"x":7.52,"y":2.231,"w":"30m","t":7.5,"pr":false,"repo":"core-billing-tool-v2"},{"x":8.63,"y":2.207,"w":"30m","t":8.6,"pr":false,"repo":"core-billing-tool-v2"},{"x":9.88,"y":1.887,"w":"30m","t":9.9,"pr":false,"repo":"core-billing-tool-v2"},{"x":47.87,"y":0.72,"w":"1h","t":47.9,"pr":false,"repo":"reporting-monitor-v2"},{"x":49.1,"y":0.902,"w":"1h","t":49.1,"pr":false,"repo":"reporting-monitor-v2"}];
  var CHECKED = [{"x":8.65,"y":2.078,"w":"30m","t":8.7,"pr":false,"repo":"legacy-notifyexporter"},{"x":15.5,"y":1.734,"w":"30m","t":15.5,"pr":false,"repo":"legacy-notifyexporter"},{"x":17.27,"y":1.874,"w":"30m","t":17.3,"pr":false,"repo":"legacy-notifyexporter"},{"x":19.45,"y":1.845,"w":"30m","t":19.4,"pr":false,"repo":"legacy-notifyexporter"},{"x":29.35,"y":2.132,"w":"30m","t":29.4,"pr":false,"repo":"legacy-notifyexporter"},{"x":49.22,"y":2.099,"w":"30m","t":49.2,"pr":true,"repo":"legacy-notifyexporter"},{"x":69.4,"y":2.22,"w":"30m","t":69.4,"pr":true,"repo":"legacy-notifyexporter"},{"x":129.4,"y":1.769,"w":"30m","t":129.4,"pr":true,"repo":"legacy-notifyexporter"},{"x":249.17,"y":1.956,"w":"30m","t":249.2,"pr":true,"repo":"legacy-notifyexporter"},{"x":489.03,"y":1.842,"w":"30m","t":489.0,"pr":true,"repo":"legacy-notifyexporter"},{"x":969.28,"y":2.003,"w":"30m","t":969.3,"pr":true,"repo":"legacy-notifyexporter"},{"x":8.25,"y":0.735,"w":"1h","t":8.2,"pr":false,"repo":"api-user"},{"x":14.3,"y":0.831,"w":"1h","t":14.3,"pr":false,"repo":"api-user"},{"x":16.6,"y":1.084,"w":"1h","t":16.6,"pr":false,"repo":"api-user"},{"x":18.55,"y":1.025,"w":"1h","t":18.6,"pr":false,"repo":"api-user"},{"x":28.08,"y":0.843,"w":"1h","t":28.1,"pr":false,"repo":"api-user"},{"x":48.83,"y":1.05,"w":"1h","t":48.8,"pr":false,"repo":"api-user"},{"x":68.8,"y":1.173,"w":"1h","t":68.8,"pr":true,"repo":"api-user"},{"x":128.57,"y":0.724,"w":"1h","t":128.6,"pr":true,"repo":"api-user"},{"x":248.93,"y":1.171,"w":"1h","t":248.9,"pr":true,"repo":"api-user"},{"x":488.8,"y":0.911,"w":"1h","t":488.8,"pr":true,"repo":"api-user"},{"x":968.83,"y":0.807,"w":"1h","t":968.8,"pr":true,"repo":"api-user"},{"x":7.17,"y":0.256,"w":"12h","t":7.2,"pr":false,"repo":"next-reportinghelper"},{"x":8.33,"y":-0.092,"w":"12h","t":8.3,"pr":false,"repo":"next-reportinghelper"},{"x":14.68,"y":-0.228,"w":"12h","t":14.7,"pr":false,"repo":"next-reportinghelper"},{"x":16.85,"y":-0.226,"w":"12h","t":16.9,"pr":false,"repo":"next-reportinghelper"},{"x":28.88,"y":0.195,"w":"12h","t":28.9,"pr":false,"repo":"next-reportinghelper"},{"x":48.9,"y":0.058,"w":"12h","t":48.9,"pr":false,"repo":"next-reportinghelper"},{"x":68.95,"y":0.172,"w":"12h","t":69.0,"pr":false,"repo":"next-reportinghelper"},{"x":129.22,"y":0.129,"w":"12h","t":129.2,"pr":false,"repo":"next-reportinghelper"},{"x":248.98,"y":0.02,"w":"12h","t":249.0,"pr":false,"repo":"next-reportinghelper"},{"x":488.53,"y":-0.068,"w":"12h","t":488.5,"pr":false,"repo":"next-reportinghelper"},{"x":969.03,"y":0.029,"w":"12h","t":969.0,"pr":true,"repo":"next-reportinghelper"},{"x":8.28,"y":0.184,"w":"12h","t":8.3,"pr":false,"repo":"service-pricing"},{"x":15.15,"y":0.066,"w":"12h","t":15.2,"pr":false,"repo":"service-pricing"},{"x":17.3,"y":0.203,"w":"12h","t":17.3,"pr":false,"repo":"service-pricing"},{"x":19.13,"y":0.043,"w":"12h","t":19.1,"pr":false,"repo":"service-pricing"},{"x":28.98,"y":0.115,"w":"12h","t":29.0,"pr":false,"repo":"service-pricing"},{"x":49.68,"y":-0.254,"w":"12h","t":49.7,"pr":false,"repo":"service-pricing"},{"x":68.58,"y":-0.152,"w":"12h","t":68.6,"pr":false,"repo":"service-pricing"},{"x":129.17,"y":-0.118,"w":"12h","t":129.2,"pr":false,"repo":"service-pricing"},{"x":249.1,"y":-0.235,"w":"12h","t":249.1,"pr":false,"repo":"service-pricing"},{"x":490.27,"y":-0.223,"w":"12h","t":490.3,"pr":false,"repo":"service-pricing"},{"x":968.88,"y":-0.124,"w":"12h","t":968.9,"pr":true,"repo":"service-pricing"},{"x":8.62,"y":2.076,"w":"30m","t":8.6,"pr":false,"repo":"core-processor-notify"},{"x":15.0,"y":1.924,"w":"30m","t":15.0,"pr":false,"repo":"core-processor-notify"},{"x":16.53,"y":1.927,"w":"30m","t":16.5,"pr":false,"repo":"core-processor-notify"},{"x":29.13,"y":1.837,"w":"30m","t":29.1,"pr":false,"repo":"core-processor-notify"},{"x":49.48,"y":1.87,"w":"30m","t":49.5,"pr":true,"repo":"core-processor-notify"},{"x":69.57,"y":2.245,"w":"30m","t":69.6,"pr":true,"repo":"core-processor-notify"},{"x":129.4,"y":2.083,"w":"30m","t":129.4,"pr":true,"repo":"core-processor-notify"},{"x":249.25,"y":2.061,"w":"30m","t":249.2,"pr":true,"repo":"core-processor-notify"},{"x":489.07,"y":2.128,"w":"30m","t":489.1,"pr":true,"repo":"core-processor-notify"},{"x":969.28,"y":1.812,"w":"30m","t":969.3,"pr":true,"repo":"core-processor-notify"},{"x":8.35,"y":1.932,"w":"30m","t":8.3,"pr":false,"repo":"ops-pricing-importer-v2"},{"x":14.77,"y":2.274,"w":"30m","t":14.8,"pr":false,"repo":"ops-pricing-importer-v2"},{"x":17.22,"y":2.078,"w":"30m","t":17.2,"pr":false,"repo":"ops-pricing-importer-v2"},{"x":28.73,"y":2.032,"w":"30m","t":28.7,"pr":false,"repo":"ops-pricing-importer-v2"},{"x":49.43,"y":2.103,"w":"30m","t":49.4,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":69.3,"y":2.192,"w":"30m","t":69.3,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":129.13,"y":2.155,"w":"30m","t":129.1,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":249.55,"y":1.848,"w":"30m","t":249.6,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":489.6,"y":1.897,"w":"30m","t":489.6,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":969.5,"y":1.87,"w":"30m","t":969.5,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":7.77,"y":1.838,"w":"30m","t":7.8,"pr":false,"repo":"reporting-bot-v2"},{"x":13.17,"y":2.248,"w":"30m","t":13.2,"pr":false,"repo":"reporting-bot-v2"},{"x":17.1,"y":2.211,"w":"30m","t":17.1,"pr":false,"repo":"reporting-bot-v2"},{"x":28.53,"y":1.896,"w":"30m","t":28.5,"pr":false,"repo":"reporting-bot-v2"},{"x":48.58,"y":2.087,"w":"30m","t":48.6,"pr":true,"repo":"reporting-bot-v2"},{"x":67.75,"y":1.942,"w":"30m","t":67.8,"pr":true,"repo":"reporting-bot-v2"},{"x":128.82,"y":2.232,"w":"30m","t":128.8,"pr":true,"repo":"reporting-bot-v2"},{"x":248.57,"y":1.977,"w":"30m","t":248.6,"pr":true,"repo":"reporting-bot-v2"},{"x":488.62,"y":1.858,"w":"30m","t":488.6,"pr":true,"repo":"reporting-bot-v2"},{"x":968.48,"y":2.034,"w":"30m","t":968.5,"pr":true,"repo":"reporting-bot-v2"},{"x":8.2,"y":0.867,"w":"1h","t":8.2,"pr":false,"repo":"ops-invoice-dashboard-v2"},{"x":14.87,"y":1.047,"w":"1h","t":14.9,"pr":false,"repo":"ops-invoice-dashboard-v2"},{"x":17.55,"y":1.223,"w":"1h","t":17.6,"pr":false,"repo":"ops-invoice-dashboard-v2"},{"x":27.75,"y":0.944,"w":"1h","t":27.8,"pr":false,"repo":"ops-invoice-dashboard-v2"},{"x":48.78,"y":0.843,"w":"1h","t":48.8,"pr":false,"repo":"ops-invoice-dashboard-v2"},{"x":68.9,"y":1.279,"w":"1h","t":68.9,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":127.8,"y":1.005,"w":"1h","t":127.8,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":248.77,"y":0.771,"w":"1h","t":248.8,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":488.75,"y":0.781,"w":"1h","t":488.8,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":968.78,"y":1.071,"w":"1h","t":968.8,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":8.4,"y":0.164,"w":"12h","t":8.4,"pr":false,"repo":"billing-scheduler-v2"},{"x":15.62,"y":-0.044,"w":"12h","t":15.6,"pr":false,"repo":"billing-scheduler-v2"},{"x":18.7,"y":-0.244,"w":"12h","t":18.7,"pr":false,"repo":"billing-scheduler-v2"},{"x":29.18,"y":-0.066,"w":"12h","t":29.2,"pr":false,"repo":"billing-scheduler-v2"},{"x":49.23,"y":0.278,"w":"12h","t":49.2,"pr":false,"repo":"billing-scheduler-v2"},{"x":69.43,"y":0.016,"w":"12h","t":69.4,"pr":false,"repo":"billing-scheduler-v2"},{"x":129.43,"y":0.264,"w":"12h","t":129.4,"pr":false,"repo":"billing-scheduler-v2"},{"x":249.23,"y":0.202,"w":"12h","t":249.2,"pr":false,"repo":"billing-scheduler-v2"},{"x":489.27,"y":0.124,"w":"12h","t":489.3,"pr":false,"repo":"billing-scheduler-v2"},{"x":969.13,"y":0.102,"w":"12h","t":969.1,"pr":true,"repo":"billing-scheduler-v2"},{"x":8.4,"y":0.021,"w":"12h","t":8.4,"pr":false,"repo":"core-billing-exporter"},{"x":14.67,"y":-0.131,"w":"12h","t":14.7,"pr":false,"repo":"core-billing-exporter"},{"x":16.72,"y":0.079,"w":"12h","t":16.7,"pr":false,"repo":"core-billing-exporter"},{"x":28.88,"y":-0.218,"w":"12h","t":28.9,"pr":false,"repo":"core-billing-exporter"},{"x":47.47,"y":-0.037,"w":"12h","t":47.5,"pr":false,"repo":"core-billing-exporter"},{"x":67.82,"y":-0.026,"w":"12h","t":67.8,"pr":false,"repo":"core-billing-exporter"},{"x":128.75,"y":0.254,"w":"12h","t":128.8,"pr":false,"repo":"core-billing-exporter"},{"x":248.05,"y":0.21,"w":"12h","t":248.1,"pr":false,"repo":"core-billing-exporter"},{"x":488.7,"y":0.0,"w":"12h","t":488.7,"pr":false,"repo":"core-billing-exporter"},{"x":968.02,"y":-0.18,"w":"12h","t":968.0,"pr":true,"repo":"core-billing-exporter"},{"x":6.43,"y":1.061,"w":"1h","t":6.4,"pr":false,"repo":"core-cron-media"},{"x":8.27,"y":0.806,"w":"1h","t":8.3,"pr":false,"repo":"core-cron-media"},{"x":45.12,"y":1.022,"w":"1h","t":45.1,"pr":false,"repo":"ops-support-importer-v2"},{"x":46.12,"y":1.156,"w":"1h","t":46.1,"pr":false,"repo":"ops-support-importer-v2"},{"x":6.83,"y":0.24,"w":"12h","t":6.8,"pr":false,"repo":"internal-inventorytools"},{"x":8.48,"y":0.212,"w":"12h","t":8.5,"pr":false,"repo":"internal-inventorytools"},{"x":46.43,"y":-0.108,"w":"12h","t":46.4,"pr":false,"repo":"next-exporter-billing"},{"x":47.93,"y":-0.248,"w":"12h","t":47.9,"pr":false,"repo":"next-exporter-billing"},{"x":6.6,"y":0.25,"w":"12h","t":6.6,"pr":false,"repo":"internal-sync-catalog"},{"x":8.28,"y":-0.232,"w":"12h","t":8.3,"pr":false,"repo":"internal-sync-catalog"},{"x":8.42,"y":1.759,"w":"30m","t":8.4,"pr":false,"repo":"legacy-invoice-worker-v2"},{"x":8.42,"y":2.149,"w":"30m","t":8.4,"pr":false,"repo":"core-shippingtool"},{"x":8.67,"y":1.986,"w":"30m","t":8.7,"pr":false,"repo":"legacy-catalog-tool"},{"x":8.27,"y":1.868,"w":"30m","t":8.3,"pr":false,"repo":"ops-helper-media"},{"x":7.68,"y":1.957,"w":"30m","t":7.7,"pr":false,"repo":"ops-shippingdashboard"},{"x":7.75,"y":2.022,"w":"30m","t":7.8,"pr":false,"repo":"tools-user"},{"x":48.43,"y":0.833,"w":"1h","t":48.4,"pr":false,"repo":"legacy-exporter-reporting"},{"x":8.47,"y":1.277,"w":"1h","t":8.5,"pr":false,"repo":"ops-ledgerhelper"},{"x":48.22,"y":0.965,"w":"1h","t":48.2,"pr":false,"repo":"internal-analytics-portal"},{"x":8.22,"y":0.788,"w":"1h","t":8.2,"pr":false,"repo":"legacy-support-scheduler-v2"},{"x":8.6,"y":0.909,"w":"1h","t":8.6,"pr":false,"repo":"internal-ledger-dashboard-v2"},{"x":49.68,"y":0.849,"w":"1h","t":49.7,"pr":false,"repo":"ops-fleet-tool-v2"},{"x":8.47,"y":-0.24,"w":"12h","t":8.5,"pr":false,"repo":"internal-paymentsservice"},{"x":7.72,"y":-0.152,"w":"12h","t":7.7,"pr":false,"repo":"ordersdashboard"},{"x":67.03,"y":0.201,"w":"12h","t":67.0,"pr":false,"repo":"search-portal"},{"x":70.97,"y":-0.147,"w":"12h","t":71.0,"pr":false,"repo":"catalog-tools"},{"x":8.2,"y":-0.16,"w":"12h","t":8.2,"pr":false,"repo":"core-monitor-booking"},{"x":63.43,"y":0.244,"w":"12h","t":63.4,"pr":false,"repo":"core-orders-client"},{"x":8.28,"y":-0.015,"w":"12h","t":8.3,"pr":false,"repo":"internal-data-api-v2"},{"x":7.93,"y":0.172,"w":"12h","t":7.9,"pr":false,"repo":"worker-catalog"}];
  var QUAR = [{"x":373.37,"y":1.737,"w":"30m","t":373.4,"pr":true,"repo":"legacy-notifyexporter"},{"x":316.12,"y":1.111,"w":"1h","t":316.1,"pr":true,"repo":"api-user"},{"x":463.75,"y":0.265,"w":"12h","t":463.8,"pr":false,"repo":"next-reportinghelper"},{"x":445.42,"y":-0.15,"w":"12h","t":445.4,"pr":false,"repo":"service-pricing"},{"x":320.73,"y":1.816,"w":"30m","t":320.7,"pr":true,"repo":"core-processor-notify"},{"x":296.33,"y":1.738,"w":"30m","t":296.3,"pr":true,"repo":"ops-pricing-importer-v2"},{"x":434.73,"y":1.868,"w":"30m","t":434.7,"pr":true,"repo":"reporting-bot-v2"},{"x":468.0,"y":0.746,"w":"1h","t":468.0,"pr":true,"repo":"ops-invoice-dashboard-v2"},{"x":298.7,"y":-0.274,"w":"12h","t":298.7,"pr":false,"repo":"billing-scheduler-v2"},{"x":434.42,"y":-0.133,"w":"12h","t":434.4,"pr":false,"repo":"core-billing-exporter"},{"x":271.92,"y":2.078,"w":"30m","t":271.9,"pr":true,"repo":"core-billing-tool-v2"},{"x":531.98,"y":1.147,"w":"1h","t":532.0,"pr":true,"repo":"core-cron-media"},{"x":284.73,"y":1.017,"w":"1h","t":284.7,"pr":true,"repo":"ops-support-importer-v2"},{"x":439.27,"y":0.731,"w":"1h","t":439.3,"pr":true,"repo":"reporting-monitor-v2"},{"x":450.02,"y":0.186,"w":"12h","t":450.0,"pr":false,"repo":"internal-inventorytools"},{"x":277.77,"y":0.212,"w":"12h","t":277.8,"pr":false,"repo":"next-exporter-billing"},{"x":280.53,"y":-0.008,"w":"12h","t":280.5,"pr":false,"repo":"internal-sync-catalog"},{"x":456.57,"y":2.146,"w":"30m","t":456.6,"pr":true,"repo":"legacy-invoice-worker-v2"},{"x":256.07,"y":1.792,"w":"30m","t":256.1,"pr":true,"repo":"core-shippingtool"},{"x":271.52,"y":2.028,"w":"30m","t":271.5,"pr":true,"repo":"legacy-catalog-tool"},{"x":453.75,"y":2.209,"w":"30m","t":453.8,"pr":true,"repo":"ops-helper-media"},{"x":281.42,"y":1.839,"w":"30m","t":281.4,"pr":true,"repo":"ops-shippingdashboard"},{"x":441.83,"y":2.129,"w":"30m","t":441.8,"pr":true,"repo":"tools-user"},{"x":300.08,"y":0.895,"w":"1h","t":300.1,"pr":true,"repo":"legacy-exporter-reporting"},{"x":278.93,"y":1.084,"w":"1h","t":278.9,"pr":true,"repo":"ops-ledgerhelper"},{"x":431.37,"y":1.01,"w":"1h","t":431.4,"pr":true,"repo":"internal-analytics-portal"},{"x":450.0,"y":0.846,"w":"1h","t":450.0,"pr":true,"repo":"legacy-support-scheduler-v2"},{"x":453.63,"y":1.049,"w":"1h","t":453.6,"pr":true,"repo":"internal-ledger-dashboard-v2"},{"x":471.28,"y":0.843,"w":"1h","t":471.3,"pr":true,"repo":"ops-fleet-tool-v2"},{"x":453.45,"y":0.073,"w":"12h","t":453.4,"pr":false,"repo":"internal-paymentsservice"},{"x":309.55,"y":0.227,"w":"12h","t":309.6,"pr":false,"repo":"ordersdashboard"},{"x":466.03,"y":-0.24,"w":"12h","t":466.0,"pr":false,"repo":"search-portal"},{"x":288.28,"y":0.095,"w":"12h","t":288.3,"pr":false,"repo":"catalog-tools"},{"x":256.5,"y":-0.206,"w":"12h","t":256.5,"pr":false,"repo":"core-monitor-booking"},{"x":300.33,"y":0.04,"w":"12h","t":300.3,"pr":false,"repo":"core-orders-client"},{"x":531.35,"y":0.159,"w":"12h","t":531.4,"pr":false,"repo":"internal-data-api-v2"},{"x":461.07,"y":-0.173,"w":"12h","t":461.1,"pr":false,"repo":"worker-catalog"},{"x":438.03,"y":3.774,"w":"60s","t":438.0,"pr":true,"repo":"acme-admin-notify"},{"x":552.95,"y":3.961,"w":"60s","t":553.0,"pr":true,"repo":"acme-service-analytics"},{"x":272.17,"y":3.957,"w":"60s","t":272.2,"pr":true,"repo":"acme-shipping-admin"},{"x":287.9,"y":3.982,"w":"60s","t":287.9,"pr":true,"repo":"internal-admin-payments"},{"x":286.97,"y":4.128,"w":"60s","t":287.0,"pr":true,"repo":"legacy-fleetportal"},{"x":304.65,"y":4.097,"w":"60s","t":304.6,"pr":true,"repo":"ops-searchadmin"},{"x":424.4,"y":4.271,"w":"60s","t":424.4,"pr":true,"repo":"gateway-auth"},{"x":315.17,"y":3.775,"w":"60s","t":315.2,"pr":true,"repo":"legacy-admin-fleet"},{"x":362.7,"y":3.945,"w":"60s","t":362.7,"pr":true,"repo":"orders-bot-v2"},{"x":473.2,"y":3.91,"w":"60s","t":473.2,"pr":true,"repo":"accountclient"},{"x":299.2,"y":4.203,"w":"60s","t":299.2,"pr":true,"repo":"exporter-payments"},{"x":428.65,"y":3.859,"w":"60s","t":428.6,"pr":true,"repo":"fleet-tool-v2"},{"x":280.57,"y":3.827,"w":"60s","t":280.6,"pr":true,"repo":"ledger-importer"},{"x":394.6,"y":3.971,"w":"60s","t":394.6,"pr":true,"repo":"next-portal-data"},{"x":544.98,"y":3.956,"w":"60s","t":545.0,"pr":true,"repo":"ops-billing-cron"},{"x":426.05,"y":2.876,"w":"5m","t":426.1,"pr":true,"repo":"core-admin-data"},{"x":284.72,"y":2.86,"w":"5m","t":284.7,"pr":true,"repo":"core-media-gateway-v2"},{"x":272.52,"y":3.237,"w":"5m","t":272.5,"pr":true,"repo":"helper-media"},{"x":309.5,"y":2.968,"w":"5m","t":309.5,"pr":true,"repo":"ops-exporter-ledger"},{"x":442.77,"y":3.202,"w":"5m","t":442.8,"pr":true,"repo":"shipping-dashboard-v2"},{"x":303.02,"y":3.028,"w":"5m","t":303.0,"pr":true,"repo":"acme-account-tools"},{"x":535.45,"y":2.748,"w":"5m","t":535.5,"pr":true,"repo":"legacy-inventoryprocessor"},{"x":446.22,"y":3.28,"w":"5m","t":446.2,"pr":true,"repo":"legacy-ledger-helper-v2"},{"x":547.52,"y":3.188,"w":"5m","t":547.5,"pr":true,"repo":"next-helper-payments"},{"x":452.23,"y":3.263,"w":"5m","t":452.2,"pr":true,"repo":"ops-billing-gateway"},{"x":438.97,"y":3.239,"w":"5m","t":439.0,"pr":true,"repo":"checkouthelper"},{"x":446.12,"y":3.195,"w":"5m","t":446.1,"pr":true,"repo":"core-accountgateway"},{"x":439.73,"y":2.813,"w":"5m","t":439.7,"pr":true,"repo":"legacy-fleet-api"},{"x":305.53,"y":2.992,"w":"5m","t":305.5,"pr":true,"repo":"next-ledger-service-v2"},{"x":432.5,"y":2.84,"w":"5m","t":432.5,"pr":true,"repo":"search-tools-v2"},{"x":449.1,"y":1.945,"w":"30m","t":449.1,"pr":true,"repo":"cron-notify"},{"x":302.18,"y":1.753,"w":"30m","t":302.2,"pr":true,"repo":"ops-notify-tool-v2"},{"x":314.1,"y":1.932,"w":"30m","t":314.1,"pr":true,"repo":"internal-media-client-v2"},{"x":283.68,"y":2.272,"w":"30m","t":283.7,"pr":true,"repo":"next-pricingexporter"},{"x":400.87,"y":0.869,"w":"1h","t":400.9,"pr":true,"repo":"catalog-bot-v2"},{"x":545.2,"y":1.159,"w":"1h","t":545.2,"pr":true,"repo":"core-notify-service"},{"x":287.88,"y":0.975,"w":"1h","t":287.9,"pr":true,"repo":"internal-usersync"},{"x":395.18,"y":0.957,"w":"1h","t":395.2,"pr":true,"repo":"legacy-orders-worker"}];
  var WINMIN = { "60s": 1, "5m": 5, "30m": 30, "1h": 60, "12h": 720 };
  var LANE_LABEL = { 0: "12h", 1: "1h", 2: "30m", 3: "5m", 4: "60s" };
  var FIRST = 6;
  var tip = function (item) {
    var r = item.raw;
    return [item.dataset.label, r.pr ? "after re-hide" : "before re-hide"];
  };
  var pt = function (label, data, color, radius, border) {
    return { label: label, data: data, backgroundColor: color, borderColor: border || color,
             borderWidth: border ? 1 : 0, pointRadius: radius, pointHoverRadius: radius + 4,
             pointStyle: "circle", pointHoverBorderColor: "#1a1a1a", pointHoverBorderWidth: 2 };
  };
  new Chart(ctx, {
    type: "scatter",
    data: { datasets: [
      pt("Probed the account", PROBED, "rgba(232,160,32,0.92)", 5.5, "rgba(150,100,0,0.9)"),
      pt("Checked the key", CHECKED, "rgba(110,116,128,0.6)", 3.7, "rgba(72,78,90,0.85)"),
      pt("AWS quarantine", QUAR, "rgba(46,160,100,0.55)", 3.6, "rgba(28,120,72,0.9)"),
    ] },
    options: {
      responsive: true, maintainAspectRatio: false,
      animation: { duration: 500 },
      layout: { padding: { left: 6, right: 30, top: 2, bottom: 4 } },
      interaction: { mode: "point", intersect: true },
      onHover: function (e, els) { e.native.target.style.cursor = els.length ? "pointer" : "default"; },
      scales: {
        x: {
          type: "logarithmic", min: 0.9, max: 1600,
          title: { display: true, text: "Minutes after the repo went public", font: { size: 13, weight: "600" }, color: "#1a1a1a", padding: { top: 12 } },
          afterBuildTicks: function (a) { a.ticks = [1, 10, 60, 720, 1440].map(function (v) { return { value: v }; }); },
          ticks: { color: "#666", font: { size: 11 }, autoSkip: false,
            callback: function (v) { return ({ 1: "1m", 10: "10m", 60: "1h", 720: "12h", 1440: "24h" })[v] || ""; } },
          grid: { color: "rgba(0,0,0,0.06)" },
        },
        y: {
          type: "linear", min: -0.8, max: 4.8,
          title: { display: true, text: "Exposure window", font: { size: 13, weight: "600" }, color: "#1a1a1a" },
          ticks: { stepSize: 1, color: "#666", font: { size: 11 },
            callback: function (v) { return LANE_LABEL[v] || ""; } },
          grid: { color: "rgba(0,0,0,0.06)" },
        },
      },
      plugins: {
        legend: { display: true, position: "top",
          labels: { usePointStyle: true, boxWidth: 16, boxHeight: 8, padding: 12, color: "#1a1a1a", font: { size: 12 } } },
        tooltip: {
          mode: "point", intersect: true, position: "nearest",
          backgroundColor: "rgba(26,26,26,0.95)", titleFont: { size: 13, weight: "600" },
          bodyFont: { size: 12 }, padding: 10, displayColors: false,
          filter: function (item, idx) { return idx === 0; },
          callbacks: { title: function (i) { return i[0].raw.t + " min after public"; }, label: tip },
        },
      },
    },
    plugins: [{
      id: "legendSpacer",
      beforeInit: function (chart) {
        if (!chart.legend) return;
        var f = chart.legend.fit;
        chart.legend.fit = function () { f.call(this); this.height += 10; };
      },
    }, {
      id: "rehideShade",
      beforeDatasetsDraw: function (c) {
        var x = c.scales.x, y = c.scales.y, g = c.ctx;
        g.save();
        for (var i = 0; i <= 4; i++) {
          var w = WINMIN[LANE_LABEL[i]];
          var x0 = Math.max(x.getPixelForValue(w), x.left);
          var top = y.getPixelForValue(i + 0.45), bot = y.getPixelForValue(i - 0.45);
          g.fillStyle = "rgba(0,0,0,0.035)";
          g.fillRect(x0, top, x.right - x0, bot - top);
          if (x.getPixelForValue(w) >= x.left) {
            g.strokeStyle = "rgba(0,0,0,0.18)"; g.setLineDash([3, 4]); g.lineWidth = 1;
            g.beginPath(); g.moveTo(x0, top); g.lineTo(x0, bot); g.stroke(); g.setLineDash([]);
          }
        }
        g.restore();
      },
    }, {
      id: "firstContact",
      afterDatasetsDraw: function (c) {
        var x = c.scales.x, y = c.scales.y, g = c.ctx, px = x.getPixelForValue(FIRST);
        g.save();
        g.strokeStyle = "rgba(232,160,32,0.75)"; g.setLineDash([4, 5]); g.lineWidth = 1.5;
        g.beginPath(); g.moveTo(px, y.top); g.lineTo(px, y.bottom); g.stroke();
        g.setLineDash([]); g.fillStyle = "#b07800"; g.font = "600 11px Inter, sans-serif"; g.textAlign = "left";
        g.fillText("first outside contact ≈ 6 min", px + 5, y.top + 12);
        g.restore();
      },
    }],
  });
})();
</script>

Two things are visible. First, the earliest action on a newly public repo came at 6 minutes, and most first visits landed around minute 8. Second, keys are used even after the repos were hidden again, so going private is not enough to undo the exposure.

The parties that showed up split three ways. Only one went further than the rest and probed the account behind the key. Most did nothing but check, over and over, that the key still worked. And one was not an outside party at all: AWS, locking the key down on a signal from GitHub.

### The one that went further

Outside parties used the keys 139 times. 5 of those came from a single host running the AWS SDK for Python. It called `DescribeInstances` to list EC2 machines and `ListTables` to list DynamoDB tables, mapping out the account rather than just confirming the key worked. That was the only hands-on activity in the whole run, and it touched just 2 repos.

### The ones that only checked

- **The harvesters.** 126 of the 139 uses came from a single operation on 2 OVH cloud IPs, every call a `GetCallerIdentity` check that the key was live and nothing more. It touched 32 repos and kept re-checking captured keys for a day; 38 of the 139 hits landed after the repo was already private again.
- **The TruffleHog-based scanner.** 8 uses came from one Hetzner host running [TruffleHog](https://github.com/trufflesecurity/trufflehog), the open-source secret scanner. It called `GetCallerIdentity` once per repo across 8 repos and moved on.
- **The email scanners.** [GitGuardian](https://www.gitguardian.com/) and a service called leakscanner found the keys and emailed us, GitGuardian on 9 repos, leakscanner on 1. We cannot tie any of the 139 uses to either of them; for all the data shows, they read the repo, emailed, and went no further.

### Not an outside party: AWS

The moment a repo went public, GitHub's free, built-in [secret scanning](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning) kicked in and reported the exposed secret to AWS. AWS then attached a [quarantine policy](https://docs.aws.amazon.com/aws-managed-policy/latest/reference/AWSCompromisedKeyQuarantineV2.html) that strips the key of its dangerous permissions. That lockdown, the green dots in the chart, did not land until 4.5 to 9 hours after exposure. Because the catch is GitHub's own, even the 60-second repos had their keys quarantined, the ones no outside party ever reached.

## The blind spot below enterprise tools

Whoever showed up, the exposure was the same. A repo goes public, the internet starts reading at minute 6, and the source sits exposed beside the key. And the flip isn't always an accident: turning a private repo public is a recognized way to exfiltrate code, [watched for by detection rules](https://detection.fyi/elastic/detection-rules/integrations/github/exfiltration_github_private_repository_turned_public/) and [catalogued by MITRE](https://attack.mitre.org/techniques/T1567/). You can rotate a key; you can't un-share code.

GitHub logs the flip and tells you nothing, the same as branch protection coming off, a check dropped, a reviewer removed, or scanning switched off. Tools that catch it do exist. The security-posture platforms big companies run will flag it, but they assume a security team to run them and a budget to match, so a smaller team that only wants to know when a repo setting changes has nothing built for it.

## Closing the blind spot

That's what we're building Codatus for: a read-only install that watches the settings this post is about, a repo going public, branch protection coming off, a check or reviewer dropped, scanning switched off, and tells you the moment one changes. We're planning to launch at $99/month, with early users locked in at that rate.
