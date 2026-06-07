---
layout: post
title: Only 2 of 128 YC-backed dev tools companies block unchecked merges
description: Of 128 YC-backed dev tools companies, 44 enable branch protection but only 2 block unchecked merges. The full leaderboard, the four rules, and the pattern that explains the gap.
og_image: /og/only-2-of-128-yc-backed-dev-tools-companies-block-unchecked-merges.png
---

We scored 6,195 public GitHub repos at 128 YC-backed dev tools companies on four rules. The median scored 21 out of 100; no company cleared 80. Apollo took the top spot at 71.

But the most interesting thing isn't the scores. It's the pattern in the data: of the 44 companies that enable branch protection on most of their repos, only 2 block unchecked merges.

## Scores

### The rules

Each rule is summarized below; full definitions and the limits of public-scan mode live in [a previous post](/blog/measuring-repo-standards-on-github/). Scanner source: [github.com/CodatusHQ/scanner](https://github.com/CodatusHQ/scanner).

- **Has branch protection.** The default branch requires a pull request before changes can land. Median pass rate across the 128: 33%.
- **Has required checks.** At least one check (status check, workflow, code scan, or deployment) must succeed before a merge. Median: 2%.
- **Has CODEOWNERS.** A CODEOWNERS file exists at `.github/`, the repo root, or `docs/`. Median: 2%.
- **Has CI workflow.** A recognized CI configuration is committed to source. Median: 45%.

<div class="post-bars" role="img" aria-label="Median pass rates: branch protection 33%, required checks 2%, CODEOWNERS 2%, CI 45%">
  <div class="row"><div class="label">Has branch protection</div><div class="track"><div class="grid"><span style="left:25%"></span><span style="left:50%"></span><span style="left:75%"></span></div><div class="fill" style="width: 33%;"></div></div><div class="val">33%</div></div>
  <div class="row"><div class="label">Has required checks</div><div class="track"><div class="grid"><span style="left:25%"></span><span style="left:50%"></span><span style="left:75%"></span></div><div class="fill" style="width: 2%;"></div></div><div class="val">2%</div></div>
  <div class="row"><div class="label">Has CODEOWNERS</div><div class="track"><div class="grid"><span style="left:25%"></span><span style="left:50%"></span><span style="left:75%"></span></div><div class="fill" style="width: 2%;"></div></div><div class="val">2%</div></div>
  <div class="row"><div class="label">Has CI workflow</div><div class="track"><div class="grid"><span style="left:25%"></span><span style="left:50%"></span><span style="left:75%"></span></div><div class="fill" style="width: 45%;"></div></div><div class="val">45%</div></div>
  <div class="axis"><div></div><div class="ticks"><span style="left:0%">0%</span><span style="left:25%">25%</span><span style="left:50%">50%</span><span style="left:75%">75%</span><span style="left:100%">100%</span></div><div></div></div>
</div>

CI passes most often, branch protection next, and required checks and CODEOWNERS almost never. 209 of 6,195 repos pass all four (3.4%); 1,398 pass two or three (22.6%); the remaining 4,588 (74.1%) pass zero or one.

### The ranking

<div class="post-table-wrap">
<table class="post-table" id="lb">
<thead>
<tr>
<th data-key="rank" data-type="num">#</th>
<th data-key="name" data-type="str">Company</th>
<th data-key="batch" data-type="str">YC batch</th>
<th class="sorted-desc" data-key="score" data-type="num">Score</th>
<th data-key="bp" data-type="num">BP</th>
<th data-key="chk" data-type="num">Chk</th>
<th data-key="co" data-type="num">CO</th>
<th data-key="ci" data-type="num">CI</th>
</tr>
</thead>
<tbody>
<tr><td data-v="1">1</td><td data-v="apollo"><a href="/scorecard/apollographql/">Apollo</a></td><td data-v="Summer 2011">Summer 2011</td><td data-v="71">71</td><td data-v="74">74%</td><td data-v="58">58%</td><td data-v="67">67%</td><td data-v="86">86%</td></tr>
<tr><td data-v="2">2</td><td data-v="formance"><a href="/scorecard/formancehq/">Formance</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="69">69</td><td data-v="96">96%</td><td data-v="61">61%</td><td data-v="38">38%</td><td data-v="83">83%</td></tr>
<tr><td data-v="3">3</td><td data-v="supabase"><a href="/scorecard/supabase/">Supabase</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="61">61</td><td data-v="100">100%</td><td data-v="22">22%</td><td data-v="38">38%</td><td data-v="85">85%</td></tr>
<tr><td data-v="4">4</td><td data-v="mezmo"><a href="/scorecard/mezmo/">Mezmo</a></td><td data-v="Winter 2015">Winter 2015</td><td data-v="58">58</td><td data-v="93">93%</td><td data-v="26">26%</td><td data-v="33">33%</td><td data-v="80">80%</td></tr>
<tr><td data-v="5">5</td><td data-v="paradedb"><a href="/scorecard/paradedb/">ParadeDB</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="58">58</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="64">64%</td><td data-v="71">71%</td></tr>
<tr><td data-v="6">6</td><td data-v="seam"><a href="/scorecard/seamapi/">Seam</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="56">56</td><td data-v="52">52%</td><td data-v="34">34%</td><td data-v="65">65%</td><td data-v="73">73%</td></tr>
<tr><td data-v="7">7</td><td data-v="doppler"><a href="/scorecard/dopplerhq/">Doppler</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="55">55</td><td data-v="100">100%</td><td data-v="22">22%</td><td data-v="16">16%</td><td data-v="83">83%</td></tr>
<tr><td data-v="8">8</td><td data-v="revenuecat"><a href="/scorecard/revenuecat/">RevenueCat</a></td><td data-v="Summer 2018">Summer 2018</td><td data-v="54">54</td><td data-v="100">100%</td><td data-v="23">23%</td><td data-v="36">36%</td><td data-v="58">58%</td></tr>
<tr><td data-v="9">9</td><td data-v="tailor"><a href="/scorecard/tailor-platform/">Tailor</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="54">54</td><td data-v="73">73%</td><td data-v="6">6%</td><td data-v="60">60%</td><td data-v="80">80%</td></tr>
<tr><td data-v="10">10</td><td data-v="questdb"><a href="/scorecard/questdb/">QuestDB</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="52">52</td><td data-v="100">100%</td><td data-v="7">7%</td><td data-v="12">12%</td><td data-v="90">90%</td></tr>
<tr><td data-v="11">11</td><td data-v="magicbell"><a href="/scorecard/magicbell/">MagicBell</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="51">51</td><td data-v="91">91%</td><td data-v="33">33%</td><td data-v="0">0%</td><td data-v="83">83%</td></tr>
<tr><td data-v="12">12</td><td data-v="rainforest"><a href="/scorecard/rainforestapp/">Rainforest</a></td><td data-v="Summer 2012">Summer 2012</td><td data-v="50">50</td><td data-v="93">93%</td><td data-v="44">44%</td><td data-v="0">0%</td><td data-v="65">65%</td></tr>
<tr><td data-v="13">13</td><td data-v="authzed"><a href="/scorecard/authzed/">authzed</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="49">49</td><td data-v="81">81%</td><td data-v="23">23%</td><td data-v="23">23%</td><td data-v="72">72%</td></tr>
<tr><td data-v="14">14</td><td data-v="tempo"><a href="/scorecard/tempoxyz/">Tempo</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="46">46</td><td data-v="100">100%</td><td data-v="8">8%</td><td data-v="11">11%</td><td data-v="68">68%</td></tr>
<tr><td data-v="15">15</td><td data-v="replit"><a href="/scorecard/replit/">Replit</a></td><td data-v="Winter 2018">Winter 2018</td><td data-v="44">44</td><td data-v="78">78%</td><td data-v="29">29%</td><td data-v="24">24%</td><td data-v="48">48%</td></tr>
<tr><td data-v="16">16</td><td data-v="rootly"><a href="/scorecard/rootlyhq/">Rootly</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="44">44</td><td data-v="90">90%</td><td data-v="28">28%</td><td data-v="0">0%</td><td data-v="61">61%</td></tr>
<tr><td data-v="17">17</td><td data-v="docker"><a href="/scorecard/docker/">Docker</a></td><td data-v="Summer 2010">Summer 2010</td><td data-v="43">43</td><td data-v="78">78%</td><td data-v="15">15%</td><td data-v="21">21%</td><td data-v="60">60%</td></tr>
<tr><td data-v="18">18</td><td data-v="reflex"><a href="/scorecard/reflex-dev/">Reflex</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="43">43</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="5">5%</td><td data-v="68">68%</td></tr>
<tr><td data-v="19">19</td><td data-v="massdriver"><a href="/scorecard/massdriver-cloud/">Massdriver</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="42">42</td><td data-v="75">75%</td><td data-v="0">0%</td><td data-v="23">23%</td><td data-v="72">72%</td></tr>
<tr><td data-v="20">20</td><td data-v="infisical"><a href="/scorecard/infisical/">Infisical</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="42">42</td><td data-v="100">100%</td><td data-v="1">1%</td><td data-v="3">3%</td><td data-v="65">65%</td></tr>
<tr><td data-v="21">21</td><td data-v="infracost"><a href="/scorecard/infracost/">Infracost</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="42">42</td><td data-v="97">97%</td><td data-v="2">2%</td><td data-v="8">8%</td><td data-v="62">62%</td></tr>
<tr><td data-v="22">22</td><td data-v="teleport"><a href="/scorecard/gravitational/">Teleport</a></td><td data-v="Summer 2015">Summer 2015</td><td data-v="42">42</td><td data-v="96">96%</td><td data-v="9">9%</td><td data-v="9">9%</td><td data-v="56">56%</td></tr>
<tr><td data-v="23">23</td><td data-v="aviator"><a href="/scorecard/aviator-co/">Aviator</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="42">42</td><td data-v="76">76%</td><td data-v="29">29%</td><td data-v="17">17%</td><td data-v="47">47%</td></tr>
<tr><td data-v="24">24</td><td data-v="mindsdb"><a href="/scorecard/mindsdb/">MindsDB</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="41">41</td><td data-v="84">84%</td><td data-v="6">6%</td><td data-v="12">12%</td><td data-v="62">62%</td></tr>
<tr><td data-v="25">25</td><td data-v="svix"><a href="/scorecard/svix/">Svix</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="41">41</td><td data-v="40">40%</td><td data-v="20">20%</td><td data-v="46">46%</td><td data-v="60">60%</td></tr>
<tr><td data-v="26">26</td><td data-v="imgix"><a href="/scorecard/imgix/">Imgix</a></td><td data-v="Summer 2011">Summer 2011</td><td data-v="39">39</td><td data-v="50">50%</td><td data-v="28">28%</td><td data-v="30">30%</td><td data-v="48">48%</td></tr>
<tr><td data-v="27">27</td><td data-v="embrace"><a href="/scorecard/embrace-io/">Embrace</a></td><td data-v="Summer 2019">Summer 2019</td><td data-v="38">38</td><td data-v="37">37%</td><td data-v="8">8%</td><td data-v="41">41%</td><td data-v="66">66%</td></tr>
<tr><td data-v="28">28</td><td data-v="botcity"><a href="/scorecard/botcity-dev/">BotCity</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="37">37</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="50">50%</td></tr>
<tr><td data-v="29">29</td><td data-v="castle"><a href="/scorecard/castle/">Castle</a></td><td data-v="Winter 2016">Winter 2016</td><td data-v="36">36</td><td data-v="90">90%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="53">53%</td></tr>
<tr><td data-v="30">30</td><td data-v="tiptap"><a href="/scorecard/ueberdosis/">Tiptap</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="36">36</td><td data-v="90">90%</td><td data-v="0">0%</td><td data-v="5">5%</td><td data-v="50">50%</td></tr>
<tr><td data-v="31">31</td><td data-v="supertokens"><a href="/scorecard/supertokens/">SuperTokens</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="35">35</td><td data-v="58">58%</td><td data-v="22">22%</td><td data-v="4">4%</td><td data-v="58">58%</td></tr>
<tr><td data-v="32">32</td><td data-v="mindee"><a href="/scorecard/mindee/">Mindee</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="35">35</td><td data-v="71">71%</td><td data-v="4">4%</td><td data-v="4">4%</td><td data-v="61">61%</td></tr>
<tr><td data-v="33">33</td><td data-v="readme"><a href="/scorecard/readmeio/">ReadMe</a></td><td data-v="Winter 2015">Winter 2015</td><td data-v="34">34</td><td data-v="48">48%</td><td data-v="6">6%</td><td data-v="25">25%</td><td data-v="60">60%</td></tr>
<tr><td data-v="34">34</td><td data-v="deepsource"><a href="/scorecard/deepsourcecorp/">DeepSource</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="34">34</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="37">37%</td></tr>
<tr><td data-v="35">35</td><td data-v="fintoc"><a href="/scorecard/fintoc-com/">Fintoc</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="34">34</td><td data-v="76">76%</td><td data-v="7">7%</td><td data-v="0">0%</td><td data-v="53">53%</td></tr>
<tr><td data-v="36">36</td><td data-v="mux"><a href="/scorecard/muxinc/">Mux</a></td><td data-v="Winter 2016">Winter 2016</td><td data-v="33">33</td><td data-v="37">37%</td><td data-v="2">2%</td><td data-v="39">39%</td><td data-v="54">54%</td></tr>
<tr><td data-v="37">37</td><td data-v="propelauth"><a href="/scorecard/propelauth/">PropelAuth</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="32">32</td><td data-v="76">76%</td><td data-v="0">0%</td><td data-v="2">2%</td><td data-v="52">52%</td></tr>
<tr><td data-v="38">38</td><td data-v="growthbook"><a href="/scorecard/growthbook/">GrowthBook</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="32">32</td><td data-v="39">39%</td><td data-v="12">12%</td><td data-v="3">3%</td><td data-v="75">75%</td></tr>
<tr><td data-v="39">39</td><td data-v="airbyte"><a href="/scorecard/airbytehq/">Airbyte</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="32">32</td><td data-v="48">48%</td><td data-v="18">18%</td><td data-v="14">14%</td><td data-v="48">48%</td></tr>
<tr><td data-v="40">40</td><td data-v="heroic labs"><a href="/scorecard/heroiclabs/">Heroic Labs</a></td><td data-v="Summer 2015">Summer 2015</td><td data-v="32">32</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="30">30%</td></tr>
<tr><td data-v="41">41</td><td data-v="amplitude"><a href="/scorecard/amplitude/">Amplitude</a></td><td data-v="Winter 2012">Winter 2012</td><td data-v="31">31</td><td data-v="50">50%</td><td data-v="3">3%</td><td data-v="7">7%</td><td data-v="65">65%</td></tr>
<tr><td data-v="42">42</td><td data-v="cortex"><a href="/scorecard/cortexapps/">Cortex</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="31">31</td><td data-v="46">46%</td><td data-v="10">10%</td><td data-v="20">20%</td><td data-v="50">50%</td></tr>
<tr><td data-v="43">43</td><td data-v="escape"><a href="/scorecard/escape-technologies/">Escape</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="31">31</td><td data-v="28">28%</td><td data-v="4">4%</td><td data-v="40">40%</td><td data-v="52">52%</td></tr>
<tr><td data-v="44">44</td><td data-v="trigger.dev"><a href="/scorecard/triggerdotdev/">Trigger.dev</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="30">30</td><td data-v="100">100%</td><td data-v="1">1%</td><td data-v="0">0%</td><td data-v="22">22%</td></tr>
<tr><td data-v="45">45</td><td data-v="avo"><a href="/scorecard/avohq/">Avo</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="30">30</td><td data-v="84">84%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="34">34%</td></tr>
<tr><td data-v="46">46</td><td data-v="hubble network"><a href="/scorecard/hubblenetwork/">Hubble Network</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="30">30</td><td data-v="47">47%</td><td data-v="0">0%</td><td data-v="11">11%</td><td data-v="64">64%</td></tr>
<tr><td data-v="47">47</td><td data-v="posthog"><a href="/scorecard/posthog/">PostHog</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="29">29</td><td data-v="33">33%</td><td data-v="26">26%</td><td data-v="12">12%</td><td data-v="46">46%</td></tr>
<tr><td data-v="48">48</td><td data-v="depot"><a href="/scorecard/depot/">Depot</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="29">29</td><td data-v="28">28%</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="87">87%</td></tr>
<tr><td data-v="49">49</td><td data-v="pagerduty"><a href="/scorecard/pagerduty/">PagerDuty</a></td><td data-v="Summer 2010">Summer 2010</td><td data-v="29">29</td><td data-v="83">83%</td><td data-v="3">3%</td><td data-v="3">3%</td><td data-v="27">27%</td></tr>
<tr><td data-v="50">50</td><td data-v="lamin"><a href="/scorecard/laminlabs/">Lamin</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="29">29</td><td data-v="23">23%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="94">94%</td></tr>
<tr><td data-v="51">51</td><td data-v="signadot"><a href="/scorecard/signadot/">Signadot</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="29">29</td><td data-v="66">66%</td><td data-v="0">0%</td><td data-v="6">6%</td><td data-v="46">46%</td></tr>
<tr><td data-v="52">52</td><td data-v="onesignal"><a href="/scorecard/onesignal/">OneSignal</a></td><td data-v="Summer 2011">Summer 2011</td><td data-v="28">28</td><td data-v="45">45%</td><td data-v="2">2%</td><td data-v="11">11%</td><td data-v="55">55%</td></tr>
<tr><td data-v="53">53</td><td data-v="exa"><a href="/scorecard/exa-labs/">Exa</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="28">28</td><td data-v="100">100%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="14">14%</td></tr>
<tr><td data-v="54">54</td><td data-v="warpbuild"><a href="/scorecard/warpbuilds/">WarpBuild</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="28">28</td><td data-v="41">41%</td><td data-v="0">0%</td><td data-v="8">8%</td><td data-v="66">66%</td></tr>
<tr><td data-v="55">55</td><td data-v="porter"><a href="/scorecard/porter-dev/">Porter</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="26">26</td><td data-v="54">54%</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="50">50%</td></tr>
<tr><td data-v="56">56</td><td data-v="convoy"><a href="/scorecard/frain-dev/">Convoy</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="25">25</td><td data-v="56">56%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="43">43%</td></tr>
<tr><td data-v="57">57</td><td data-v="alpaca"><a href="/scorecard/alpacahq/">Alpaca</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="24">24</td><td data-v="45">45%</td><td data-v="2">2%</td><td data-v="10">10%</td><td data-v="40">40%</td></tr>
<tr><td data-v="58">58</td><td data-v="zeplin"><a href="/scorecard/zeplin/">Zeplin</a></td><td data-v="Summer 2015">Summer 2015</td><td data-v="24">24</td><td data-v="46">46%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="50">50%</td></tr>
<tr><td data-v="59">59</td><td data-v="dailybot"><a href="/scorecard/dailybothq/">Dailybot</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="24">24</td><td data-v="33">33%</td><td data-v="25">25%</td><td data-v="0">0%</td><td data-v="41">41%</td></tr>
<tr><td data-v="60">60</td><td data-v="buildbuddy"><a href="/scorecard/buildbuddy-io/">BuildBuddy</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="23">23</td><td data-v="35">35%</td><td data-v="17">17%</td><td data-v="0">0%</td><td data-v="41">41%</td></tr>
<tr><td data-v="61">61</td><td data-v="raycast"><a href="/scorecard/raycast/">Raycast</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="23">23</td><td data-v="40">40%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="53">53%</td></tr>
<tr><td data-v="62">62</td><td data-v="fifthtry"><a href="/scorecard/fifthtry/">FifthTry</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="22">22</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="86">86%</td></tr>
<tr><td data-v="63">63</td><td data-v="skyhook"><a href="/scorecard/skyhook-io/">Skyhook</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="22">22</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="2">2%</td><td data-v="86">86%</td></tr>
<tr><td data-v="64">64</td><td data-v="beam"><a href="/scorecard/beam-cloud/">Beam</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="22">22</td><td data-v="36">36%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="52">52%</td></tr>
<tr><td data-v="65">65</td><td data-v="supernova"><a href="/scorecard/supernova-studio/">Supernova</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="21">21</td><td data-v="82">82%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="2">2%</td></tr>
<tr><td data-v="66">66</td><td data-v="mintlify"><a href="/scorecard/mintlify/">Mintlify</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="21">21</td><td data-v="70">70%</td><td data-v="3">3%</td><td data-v="3">3%</td><td data-v="11">11%</td></tr>
<tr><td data-v="67">67</td><td data-v="alokai"><a href="/scorecard/vuestorefront/">Alokai</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="21">21</td><td data-v="37">37%</td><td data-v="0">0%</td><td data-v="18">18%</td><td data-v="31">31%</td></tr>
<tr><td data-v="68">68</td><td data-v="elementary"><a href="/scorecard/elementary-data/">Elementary</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="21">21</td><td data-v="26">26%</td><td data-v="6">6%</td><td data-v="6">6%</td><td data-v="46">46%</td></tr>
<tr><td data-v="69">69</td><td data-v="dagger"><a href="/scorecard/dagger/">Dagger</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="20">20</td><td data-v="62">62%</td><td data-v="0">0%</td><td data-v="3">3%</td><td data-v="15">15%</td></tr>
<tr><td data-v="70">70</td><td data-v="bitmovin"><a href="/scorecard/bitmovin/">Bitmovin</a></td><td data-v="Summer 2015">Summer 2015</td><td data-v="19">19</td><td data-v="32">32%</td><td data-v="12">12%</td><td data-v="2">2%</td><td data-v="31">31%</td></tr>
<tr><td data-v="71">71</td><td data-v="wasmer"><a href="/scorecard/wasmerio/">Wasmer</a></td><td data-v="Summer 2019">Summer 2019</td><td data-v="19">19</td><td data-v="17">17%</td><td data-v="12">12%</td><td data-v="3">3%</td><td data-v="47">47%</td></tr>
<tr><td data-v="72">72</td><td data-v="codecrafters"><a href="/scorecard/codecrafters-io/">CodeCrafters</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="19">19</td><td data-v="8">8%</td><td data-v="7">7%</td><td data-v="0">0%</td><td data-v="62">62%</td></tr>
<tr><td data-v="73">73</td><td data-v="hoop.dev"><a href="/scorecard/hoophq/">hoop.dev</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="18">18</td><td data-v="14">14%</td><td data-v="0">0%</td><td data-v="4">4%</td><td data-v="57">57%</td></tr>
<tr><td data-v="74">74</td><td data-v="vellum"><a href="/scorecard/vellum-ai/">Vellum</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="18">18</td><td data-v="8">8%</td><td data-v="8">8%</td><td data-v="8">8%</td><td data-v="50">50%</td></tr>
<tr><td data-v="75">75</td><td data-v="continue"><a href="/scorecard/continuedev/">Continue</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="17">17</td><td data-v="7">7%</td><td data-v="4">4%</td><td data-v="1">1%</td><td data-v="59">59%</td></tr>
<tr><td data-v="76">76</td><td data-v="quicknode"><a href="/scorecard/quiknode-labs/">Quicknode</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="17">17</td><td data-v="42">42%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="27">27%</td></tr>
<tr><td data-v="77">77</td><td data-v="superwall"><a href="/scorecard/superwall/">Superwall</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="17">17</td><td data-v="12">12%</td><td data-v="4">4%</td><td data-v="8">8%</td><td data-v="44">44%</td></tr>
<tr><td data-v="78">78</td><td data-v="courier"><a href="/scorecard/trycourier/">Courier</a></td><td data-v="Summer 2019">Summer 2019</td><td data-v="16">16</td><td data-v="27">27%</td><td data-v="3">3%</td><td data-v="1">1%</td><td data-v="35">35%</td></tr>
<tr><td data-v="79">79</td><td data-v="glide"><a href="/scorecard/glideapps/">Glide</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="16">16</td><td data-v="16">16%</td><td data-v="6">6%</td><td data-v="6">6%</td><td data-v="39">39%</td></tr>
<tr><td data-v="80">80</td><td data-v="nango"><a href="/scorecard/nangohq/">Nango</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="16">16</td><td data-v="20">20%</td><td data-v="13">13%</td><td data-v="0">0%</td><td data-v="33">33%</td></tr>
<tr><td data-v="81">81</td><td data-v="flowglad"><a href="/scorecard/flowglad/">Flowglad</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="16">16</td><td data-v="16">16%</td><td data-v="8">8%</td><td data-v="0">0%</td><td data-v="41">41%</td></tr>
<tr><td data-v="82">82</td><td data-v="algolia"><a href="/scorecard/algolia/">Algolia</a></td><td data-v="Winter 2014">Winter 2014</td><td data-v="15">15</td><td data-v="22">22%</td><td data-v="8">8%</td><td data-v="3">3%</td><td data-v="30">30%</td></tr>
<tr><td data-v="83">83</td><td data-v="font awesome"><a href="/scorecard/fortawesome/">Font Awesome</a></td><td data-v="Summer 2015">Summer 2015</td><td data-v="15">15</td><td data-v="12">12%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="48">48%</td></tr>
<tr><td data-v="84">84</td><td data-v="rulebricks"><a href="/scorecard/rulebricks/">Rulebricks</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="15">15</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="62">62%</td></tr>
<tr><td data-v="85">85</td><td data-v="speedscale"><a href="/scorecard/speedscale/">Speedscale</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="15">15</td><td data-v="12">12%</td><td data-v="6">6%</td><td data-v="0">0%</td><td data-v="43">43%</td></tr>
<tr><td data-v="86">86</td><td data-v="signoz"><a href="/scorecard/signoz/">SigNoz</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="14">14</td><td data-v="22">22%</td><td data-v="6">6%</td><td data-v="8">8%</td><td data-v="20">20%</td></tr>
<tr><td data-v="87">87</td><td data-v="inconvo"><a href="/scorecard/inconvoai/">Inconvo</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="14">14</td><td data-v="25">25%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="33">33%</td></tr>
<tr><td data-v="88">88</td><td data-v="roboflow"><a href="/scorecard/roboflow/">Roboflow</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="13">13</td><td data-v="23">23%</td><td data-v="3">3%</td><td data-v="6">6%</td><td data-v="23">23%</td></tr>
<tr><td data-v="89">89</td><td data-v="shuttle"><a href="/scorecard/shuttle-hq/">Shuttle</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="13">13</td><td data-v="14">14%</td><td data-v="2">2%</td><td data-v="4">4%</td><td data-v="34">34%</td></tr>
<tr><td data-v="90">90</td><td data-v="retool"><a href="/scorecard/tryretool/">Retool</a></td><td data-v="Winter 2017">Winter 2017</td><td data-v="13">13</td><td data-v="33">33%</td><td data-v="0">0%</td><td data-v="2">2%</td><td data-v="17">17%</td></tr>
<tr><td data-v="91">91</td><td data-v="windmill"><a href="/scorecard/windmill-labs/">Windmill</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="13">13</td><td data-v="8">8%</td><td data-v="0">0%</td><td data-v="4">4%</td><td data-v="43">43%</td></tr>
<tr><td data-v="92">92</td><td data-v="ultralight"><a href="/scorecard/ultralight-ux/">Ultralight</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="13">13</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="53">53%</td></tr>
<tr><td data-v="93">93</td><td data-v="hyperbeam"><a href="/scorecard/hyperbeam/">Hyperbeam</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="13">13</td><td data-v="54">54%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td></tr>
<tr><td data-v="94">94</td><td data-v="hotglue"><a href="/scorecard/hotgluexyz/">hotglue</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="12">12</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="51">51%</td></tr>
<tr><td data-v="95">95</td><td data-v="ditto"><a href="/scorecard/dittowords/">Ditto</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="12">12</td><td data-v="30">30%</td><td data-v="10">10%</td><td data-v="0">0%</td><td data-v="10">10%</td></tr>
<tr><td data-v="96">96</td><td data-v="evidently ai"><a href="/scorecard/evidentlyai/">Evidently AI</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="12">12</td><td data-v="10">10%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="40">40%</td></tr>
<tr><td data-v="97">97</td><td data-v="jovian"><a href="/scorecard/jovianhq/">Jovian</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="12">12</td><td data-v="30">30%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="20">20%</td></tr>
<tr><td data-v="98">98</td><td data-v="bitrise"><a href="/scorecard/bitrise-io/">Bitrise</a></td><td data-v="Winter 2017">Winter 2017</td><td data-v="11">11</td><td data-v="30">30%</td><td data-v="13">13%</td><td data-v="0">0%</td><td data-v="3">3%</td></tr>
<tr><td data-v="99">99</td><td data-v="drdroid"><a href="/scorecard/drdroidlab/">DrDroid</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="11">11</td><td data-v="30">30%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="16">16%</td></tr>
<tr><td data-v="100">100</td><td data-v="assemblyai"><a href="/scorecard/assemblyai/">AssemblyAI</a></td><td data-v="Summer 2017">Summer 2017</td><td data-v="11">11</td><td data-v="20">20%</td><td data-v="4">4%</td><td data-v="0">0%</td><td data-v="20">20%</td></tr>
<tr><td data-v="101">101</td><td data-v="artillery"><a href="/scorecard/artilleryio/">Artillery</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="11">11</td><td data-v="10">10%</td><td data-v="0">0%</td><td data-v="5">5%</td><td data-v="31">31%</td></tr>
<tr><td data-v="102">102</td><td data-v="evidence"><a href="/scorecard/evidence-dev/">Evidence</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="10">10</td><td data-v="14">14%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="25">25%</td></tr>
<tr><td data-v="103">103</td><td data-v="okteto"><a href="/scorecard/okteto/">Okteto</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="9">9</td><td data-v="14">14%</td><td data-v="0">0%</td><td data-v="5">5%</td><td data-v="19">19%</td></tr>
<tr><td data-v="104">104</td><td data-v="curvenote"><a href="/scorecard/curvenote/">Curvenote</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="9">9</td><td data-v="6">6%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="30">30%</td></tr>
<tr><td data-v="105">105</td><td data-v="hackerrank"><a href="/scorecard/interviewstreet/">HackerRank</a></td><td data-v="Summer 2011">Summer 2011</td><td data-v="9">9</td><td data-v="15">15%</td><td data-v="5">5%</td><td data-v="1">1%</td><td data-v="15">15%</td></tr>
<tr><td data-v="106">106</td><td data-v="pipekit"><a href="/scorecard/pipekit/">Pipekit</a></td><td data-v="Summer 2021">Summer 2021</td><td data-v="9">9</td><td data-v="27">27%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="11">11%</td></tr>
<tr><td data-v="107">107</td><td data-v="lightdash"><a href="/scorecard/lightdash/">Lightdash</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="8">8</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="3">3%</td><td data-v="29">29%</td></tr>
<tr><td data-v="108">108</td><td data-v="parea"><a href="/scorecard/parea-ai/">Parea</a></td><td data-v="Summer 2023">Summer 2023</td><td data-v="8">8</td><td data-v="7">7%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="28">28%</td></tr>
<tr><td data-v="109">109</td><td data-v="datasaur"><a href="/scorecard/datasaur-ai/">Datasaur</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="8">8</td><td data-v="25">25%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="8">8%</td></tr>
<tr><td data-v="110">110</td><td data-v="expo"><a href="/scorecard/expo/">Expo</a></td><td data-v="Summer 2016">Summer 2016</td><td data-v="7">7</td><td data-v="8">8%</td><td data-v="1">1%</td><td data-v="3">3%</td><td data-v="19">19%</td></tr>
<tr><td data-v="111">111</td><td data-v="karate labs"><a href="/scorecard/karatelabs/">Karate Labs</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="7">7</td><td data-v="7">7%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="23">23%</td></tr>
<tr><td data-v="112">112</td><td data-v="webiny"><a href="/scorecard/webiny/">Webiny</a></td><td data-v="Winter 2021">Winter 2021</td><td data-v="6">6</td><td data-v="7">7%</td><td data-v="5">5%</td><td data-v="0">0%</td><td data-v="14">14%</td></tr>
<tr><td data-v="113">113</td><td data-v="nullstone"><a href="/scorecard/nullstone-io/">Nullstone</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="6">6</td><td data-v="4">4%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="22">22%</td></tr>
<tr><td data-v="114">114</td><td data-v="inkeep"><a href="/scorecard/inkeep/">Inkeep</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="5">5</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="2">2%</td><td data-v="16">16%</td></tr>
<tr><td data-v="115">115</td><td data-v="boundary"><a href="/scorecard/boundaryml/">Boundary</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="5">5</td><td data-v="2">2%</td><td data-v="2">2%</td><td data-v="0">0%</td><td data-v="17">17%</td></tr>
<tr><td data-v="116">116</td><td data-v="draftbit"><a href="/scorecard/draftbit/">Draftbit</a></td><td data-v="Winter 2018">Winter 2018</td><td data-v="5">5</td><td data-v="3">3%</td><td data-v="3">3%</td><td data-v="0">0%</td><td data-v="15">15%</td></tr>
<tr><td data-v="117">117</td><td data-v="firecrawl"><a href="/scorecard/firecrawl/">Firecrawl</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="4">4</td><td data-v="4">4%</td><td data-v="0">0%</td><td data-v="1">1%</td><td data-v="12">12%</td></tr>
<tr><td data-v="118">118</td><td data-v="medplum"><a href="/scorecard/medplum/">Medplum</a></td><td data-v="Summer 2022">Summer 2022</td><td data-v="4">4</td><td data-v="11">11%</td><td data-v="2">2%</td><td data-v="2">2%</td><td data-v="4">4%</td></tr>
<tr><td data-v="119">119</td><td data-v="litellm"><a href="/scorecard/berriai/">LiteLLM</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="4">4</td><td data-v="4">4%</td><td data-v="4">4%</td><td data-v="0">0%</td><td data-v="11">11%</td></tr>
<tr><td data-v="120">120</td><td data-v="mito"><a href="/scorecard/mito-ds/">Mito</a></td><td data-v="Summer 2020">Summer 2020</td><td data-v="4">4</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="17">17%</td></tr>
<tr><td data-v="121">121</td><td data-v="cosmic"><a href="/scorecard/cosmicjs/">Cosmic</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="3">3</td><td data-v="8">8%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="4">4%</td></tr>
<tr><td data-v="122">122</td><td data-v="nanonets"><a href="/scorecard/nanonets/">NanoNets</a></td><td data-v="Winter 2017">Winter 2017</td><td data-v="3">3</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="12">12%</td></tr>
<tr><td data-v="123">123</td><td data-v="velt"><a href="/scorecard/velt-js/">Velt</a></td><td data-v="Winter 2022">Winter 2022</td><td data-v="2">2</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="2">2%</td><td data-v="6">6%</td></tr>
<tr><td data-v="124">124</td><td data-v="dockup"><a href="/scorecard/dockup/">Dockup</a></td><td data-v="Winter 2019">Winter 2019</td><td data-v="2">2</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="8">8%</td></tr>
<tr><td data-v="125">125</td><td data-v="cosine"><a href="/scorecard/cosineai/">Cosine</a></td><td data-v="Winter 2023">Winter 2023</td><td data-v="1">1</td><td data-v="1">1%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="6">6%</td></tr>
<tr><td data-v="126">126</td><td data-v="release"><a href="/scorecard/awesome-release/">Release</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="1">1</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="6">6%</td></tr>
<tr><td data-v="127">127</td><td data-v="termii"><a href="/scorecard/termiiwebtech/">Termii</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="0">0</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td></tr>
<tr><td data-v="128">128</td><td data-v="jet admin"><a href="/scorecard/jet-admin/">Jet Admin</a></td><td data-v="Winter 2020">Winter 2020</td><td data-v="0">0</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td><td data-v="0">0%</td></tr>
</tbody>
</table>
</div>

<script>
(function () {
  var table = document.getElementById("lb");
  if (!table) return;
  var ths = table.querySelectorAll("thead th");
  ths.forEach(function (th, idx) {
    th.addEventListener("click", function () {
      var type = th.getAttribute("data-type");
      var asc = !th.classList.contains("sorted-asc");
      ths.forEach(function (x) { x.classList.remove("sorted-asc", "sorted-desc"); });
      th.classList.add(asc ? "sorted-asc" : "sorted-desc");
      var tbody = table.tBodies[0];
      var rows = Array.prototype.slice.call(tbody.rows);
      rows.sort(function (a, b) {
        var va = a.cells[idx].getAttribute("data-v");
        var vb = b.cells[idx].getAttribute("data-v");
        if (type === "num") { va = parseFloat(va); vb = parseFloat(vb); }
        if (va < vb) return asc ? -1 : 1;
        if (va > vb) return asc ? 1 : -1;
        return 0;
      });
      rows.forEach(function (r) { tbody.appendChild(r); });
    });
  });
})();
</script>

<details class="post-details" markdown="1">
<summary>How the 128 were chosen</summary>
<div class="inner" markdown="1">

The starting universe of 549 companies is the union of YC's `developer-tools` (532) and `devops` (50) tags, pulled from [yc-oss.github.io](https://yc-oss.github.io/api/) and deduplicated on slug. We narrowed from there:

- **Operating companies.** Companies whose YC status reads "Inactive" or "Acquired" were removed. Companies marked "Public-on-stock-market" were kept; they're still operating dev tools businesses, just at different scale. 142 dropped. 407 remaining.
- **Mature batches.** Batches Winter 2024 and later were removed. Companies that recently entered YC haven't been around long enough to have settled engineering practices. 166 dropped. 241 remaining.
- **Verified GitHub org.** We matched each company to a GitHub organization via homepage links and GitHub search, requiring either a domain match or an exact name match to avoid mis-attributions. 47 dropped. 194 remaining.
- **Non-trivial public footprint.** We required at least 10 active (non-fork, non-archived) public repos per org. 66 dropped. 128 remaining.

The cohort includes two publicly-traded YC alumni: **Amplitude** (Winter 2012, rank 41, score 31) and **PagerDuty** (Summer 2010, rank 49, score 29). **GitLab** (Winter 2015) passed the earlier filters but drops at the public-footprint step; their GitHub footprint is two forked repos because they host on gitlab.com.

</div>
</details>

## Pattern

Something jumped out while we were scoring the cohort: branch protection passes for a real chunk of the dataset, but required checks barely register. To see how this plays out, we plotted each company on both: branch protection pass rate on one axis, required checks pass rate on the other.

<div class="post-scatter">
  <div class="post-scatter-canvas"><canvas id="scatter"></canvas></div>
  <div class="post-scatter-hint">Hover a dot for details. Click to open the company's scorecard.</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.min.js"></script>
<script>
(function () {
  var ctx = document.getElementById("scatter");
  if (!ctx || typeof Chart === "undefined") return;
  var DATA = [{"x":74.55770719383153,"y":56.100043020890666,"bp":74,"chk":58,"label":"Apollo","slug":"apollographql","repos":137},{"x":95.10011727347647,"y":59.89284295259529,"bp":96,"chk":61,"label":"Formance","slug":"formancehq","repos":31},{"x":100,"y":22.706797949691644,"bp":100,"chk":22,"label":"Supabase","slug":"supabase","repos":68},{"x":94.56871827081937,"y":24.347755330517664,"bp":93,"chk":26,"label":"Mezmo","slug":"mezmo","repos":15},{"x":99.68768727874108,"y":0,"bp":100,"chk":0,"label":"ParadeDB","slug":"paradedb","repos":14},{"x":50.87455189921441,"y":34.02142115241345,"bp":52,"chk":34,"label":"Seam","slug":"seamapi","repos":38},{"x":98.10614387873545,"y":20.795350602746595,"bp":100,"chk":22,"label":"Doppler","slug":"dopplerhq","repos":18},{"x":100,"y":23.179765922412866,"bp":100,"chk":23,"label":"RevenueCat","slug":"revenuecat","repos":46},{"x":71.88176248816279,"y":6.357062735503635,"bp":73,"chk":6,"label":"Tailor","slug":"tailor-platform","repos":15},{"x":100,"y":5.025995038712244,"bp":100,"chk":7,"label":"QuestDB","slug":"questdb","repos":64},{"x":92.22327700733123,"y":33.792557579952906,"bp":91,"chk":33,"label":"MagicBell","slug":"magicbell","repos":24},{"x":92.36100206607196,"y":42.621917999247124,"bp":93,"chk":44,"label":"Rainforest","slug":"rainforestapp","repos":29},{"x":82.82885228882712,"y":22.346378180450508,"bp":81,"chk":23,"label":"authzed","slug":"authzed","repos":43},{"x":98.37098337352059,"y":6.386865507333856,"bp":100,"chk":8,"label":"Tempo","slug":"tempoxyz","repos":35},{"x":79.38997746538983,"y":29.414904125467565,"bp":78,"chk":29,"label":"Replit","slug":"replit","repos":37},{"x":91.22851309309752,"y":28.91892714677527,"bp":90,"chk":28,"label":"Rootly","slug":"rootlyhq","repos":21},{"x":78.1449123658188,"y":16.89246305591748,"bp":78,"chk":15,"label":"Docker","slug":"docker","repos":119},{"x":99.51413750883341,"y":0.208162525092908,"bp":100,"chk":0,"label":"Reflex","slug":"reflex-dev","repos":19},{"x":76.31761865701198,"y":0.4740790094569842,"bp":75,"chk":0,"label":"Massdriver","slug":"massdriver-cloud","repos":162},{"x":100,"y":1.3094085810270482,"bp":100,"chk":1,"label":"Infisical","slug":"infisical","repos":52},{"x":97.8182873448597,"y":0.18329753462264886,"bp":97,"chk":2,"label":"Infracost","slug":"infracost","repos":35},{"x":94.91159310260619,"y":8.157551854408428,"bp":96,"chk":9,"label":"Teleport","slug":"gravitational","repos":32},{"x":74.3191679076945,"y":27.93116354544412,"bp":76,"chk":29,"label":"Aviator","slug":"aviator-co","repos":17},{"x":82.40400571763891,"y":5.1118944124403685,"bp":84,"chk":6,"label":"MindsDB","slug":"mindsdb","repos":32},{"x":40.5427377770576,"y":19.459328715880336,"bp":40,"chk":20,"label":"Svix","slug":"svix","repos":15},{"x":49.48072386846753,"y":26.83802812308595,"bp":50,"chk":28,"label":"Imgix","slug":"imgix","repos":52},{"x":36.067911288196456,"y":9.746618350849976,"bp":37,"chk":8,"label":"Embrace","slug":"embrace-io","repos":24},{"x":100,"y":0.43652402266795276,"bp":100,"chk":0,"label":"BotCity","slug":"botcity-dev","repos":22},{"x":88.68455459279238,"y":3.9165071918013967,"bp":90,"chk":3,"label":"Castle","slug":"castle","repos":32},{"x":88.65360997504771,"y":0,"bp":90,"chk":0,"label":"Tiptap","slug":"ueberdosis","repos":20},{"x":59.95809340254638,"y":22.559999039416372,"bp":58,"chk":22,"label":"SuperTokens","slug":"supertokens","repos":63},{"x":71.22779897509858,"y":4.738457003959498,"bp":71,"chk":4,"label":"Mindee","slug":"mindee","repos":21},{"x":49.37140768075924,"y":7.103999646184979,"bp":48,"chk":6,"label":"ReadMe","slug":"readmeio","repos":43},{"x":98.91619228785642,"y":0,"bp":100,"chk":0,"label":"DeepSource","slug":"deepsourcecorp","repos":24},{"x":75.26181219223633,"y":6.070963503902811,"bp":76,"chk":7,"label":"Fintoc","slug":"fintoc-com","repos":13},{"x":35.8439313743453,"y":3.7716388573402178,"bp":37,"chk":2,"label":"Mux","slug":"muxinc","repos":82},{"x":77.50547050589067,"y":0,"bp":76,"chk":0,"label":"PropelAuth","slug":"propelauth","repos":34},{"x":39.62175466117952,"y":11.582527604242657,"bp":39,"chk":12,"label":"GrowthBook","slug":"growthbook","repos":33},{"x":49.65819035896217,"y":17.835407410349596,"bp":48,"chk":18,"label":"Airbyte","slug":"airbytehq","repos":27},{"x":99.05952066599221,"y":0,"bp":100,"chk":0,"label":"Heroic Labs","slug":"heroiclabs","repos":23},{"x":50.245472536652606,"y":2.050966434091741,"bp":50,"chk":3,"label":"Amplitude","slug":"amplitude","repos":64},{"x":46.338343960894164,"y":11.591291534409908,"bp":46,"chk":10,"label":"Cortex","slug":"cortexapps","repos":30},{"x":27.597602020561588,"y":2.8772830366291333,"bp":28,"chk":4,"label":"Escape","slug":"escape-technologies","repos":25},{"x":100,"y":1.038105174705858,"bp":100,"chk":1,"label":"Trigger.dev","slug":"triggerdotdev","repos":58},{"x":82.36363764869517,"y":1.1884655016989383,"bp":84,"chk":3,"label":"Avo","slug":"avohq","repos":26},{"x":45.43859652140264,"y":0.5097841668123602,"bp":47,"chk":0,"label":"Hubble Network","slug":"hubblenetwork","repos":17},{"x":34.168317457451856,"y":25.688639867198738,"bp":33,"chk":26,"label":"PostHog","slug":"posthog","repos":147},{"x":26.254110824607828,"y":1.526477146026147,"bp":28,"chk":2,"label":"Depot","slug":"depot","repos":71},{"x":84.98448552096039,"y":3.116457380396548,"bp":83,"chk":3,"label":"PagerDuty","slug":"pagerduty","repos":61},{"x":24.884313510454472,"y":1.4431188089379923,"bp":23,"chk":0,"label":"Lamin","slug":"laminlabs","repos":34},{"x":64.04592408777128,"y":0.8828872774407786,"bp":66,"chk":0,"label":"Signadot","slug":"signadot","repos":15},{"x":45.7268414761063,"y":2.1478813216351806,"bp":45,"chk":2,"label":"OneSignal","slug":"onesignal","repos":72},{"x":99.06730075981017,"y":0.5638471943192322,"bp":100,"chk":0,"label":"Exa","slug":"exa-labs","repos":41},{"x":39.44620869438351,"y":0,"bp":41,"chk":0,"label":"WarpBuild","slug":"warpbuilds","repos":12},{"x":53.81489482531683,"y":3.8152637100843205,"bp":54,"chk":2,"label":"Porter","slug":"porter-dev","repos":46},{"x":57.50341176151278,"y":2.053556203004363,"bp":56,"chk":3,"label":"Convoy","slug":"frain-dev","repos":30},{"x":45.00234445220119,"y":0.7146075221205255,"bp":45,"chk":2,"label":"Alpaca","slug":"alpacahq","repos":37},{"x":47.65051135737928,"y":4.482074279347067,"bp":46,"chk":3,"label":"Zeplin","slug":"zeplin","repos":28},{"x":32.19377916579453,"y":25.55579797946402,"bp":33,"chk":25,"label":"Dailybot","slug":"dailybothq","repos":12},{"x":35.43588084575269,"y":15.611357074198539,"bp":35,"chk":17,"label":"BuildBuddy","slug":"buildbuddy-io","repos":17},{"x":41.05004320030061,"y":0.15751612047850294,"bp":40,"chk":0,"label":"Raycast","slug":"raycast","repos":15},{"x":3.114505914522233,"y":0.12141468878070993,"bp":2,"chk":0,"label":"FifthTry","slug":"fifthtry","repos":167},{"x":0.0022875845117740212,"y":0,"bp":2,"chk":0,"label":"Skyhook","slug":"skyhook-io","repos":36},{"x":34.07790696954333,"y":1.7163944650584684,"bp":36,"chk":0,"label":"Beam","slug":"beam-cloud","repos":19},{"x":83.51488751129274,"y":1.3266621174447177,"bp":82,"chk":0,"label":"Supernova","slug":"supernova-studio","repos":41},{"x":69.23005650161065,"y":1.2317006659767502,"bp":70,"chk":3,"label":"Mintlify","slug":"mintlify","repos":27},{"x":38.51203839681616,"y":1.7877977811919763,"bp":37,"chk":0,"label":"Alokai","slug":"vuestorefront","repos":16},{"x":24.342613808271516,"y":5.943961853266455,"bp":26,"chk":6,"label":"Elementary","slug":"elementary-data","repos":15},{"x":60.27685007387353,"y":1.0424086610289263,"bp":62,"chk":0,"label":"Dagger","slug":"dagger","repos":32},{"x":33.06333771722795,"y":10.513565857999051,"bp":32,"chk":12,"label":"Bitmovin","slug":"bitmovin","repos":89},{"x":16.901129512394924,"y":12.199214373979775,"bp":17,"chk":12,"label":"Wasmer","slug":"wasmerio","repos":86},{"x":7.060226515760236,"y":8.48973216434103,"bp":8,"chk":7,"label":"CodeCrafters","slug":"codecrafters-io","repos":81},{"x":13.692551760803548,"y":0,"bp":14,"chk":0,"label":"hoop.dev","slug":"hoophq","repos":21},{"x":8.157184355117833,"y":8.919724276359904,"bp":8,"chk":8,"label":"Vellum","slug":"vellum-ai","repos":12},{"x":5.804604253558784,"y":3.24686516520358,"bp":7,"chk":4,"label":"Continue","slug":"continuedev","repos":64},{"x":43.98059742664358,"y":0.599512230557814,"bp":42,"chk":0,"label":"Quicknode","slug":"quiknode-labs","repos":47},{"x":11.752400335658017,"y":4.0703033641423625,"bp":12,"chk":4,"label":"Superwall","slug":"superwall","repos":25},{"x":25.484016783473063,"y":1.8987893481262295,"bp":27,"chk":3,"label":"Courier","slug":"trycourier","repos":51},{"x":15.35234224858982,"y":6.353234873828933,"bp":16,"chk":6,"label":"Glide","slug":"glideapps","repos":43},{"x":18.920458930386307,"y":11.880869537806237,"bp":20,"chk":13,"label":"Nango","slug":"nangohq","repos":15},{"x":14.28397234403613,"y":8.524411829080396,"bp":16,"chk":8,"label":"Flowglad","slug":"flowglad","repos":12},{"x":20.915767135244618,"y":9.621680052024512,"bp":22,"chk":8,"label":"Algolia","slug":"algolia","repos":336},{"x":13.438541601014986,"y":0,"bp":12,"chk":0,"label":"Font Awesome","slug":"fortawesome","repos":25},{"x":0,"y":0.6759111131851223,"bp":0,"chk":0,"label":"Rulebricks","slug":"rulebricks","repos":16},{"x":10.856947229481754,"y":4.5292473949001,"bp":12,"chk":6,"label":"Speedscale","slug":"speedscale","repos":16},{"x":23.742056962322685,"y":6.284172373301137,"bp":22,"chk":6,"label":"SigNoz","slug":"signoz","repos":80},{"x":24.890684105247175,"y":1.1384776971630135,"bp":25,"chk":0,"label":"Inconvo","slug":"inconvoai","repos":12},{"x":24.229987991066572,"y":1.7616396574475108,"bp":23,"chk":3,"label":"Roboflow","slug":"roboflow","repos":89},{"x":12.387723256915294,"y":1.72420472962551,"bp":14,"chk":2,"label":"Shuttle","slug":"shuttle-hq","repos":41},{"x":32.694314492079684,"y":0,"bp":33,"chk":0,"label":"Retool","slug":"tryretool","repos":39},{"x":8.916303397839403,"y":0.6934581891732061,"bp":8,"chk":0,"label":"Windmill","slug":"windmill-labs","repos":23},{"x":1.9366608454638645,"y":0,"bp":0,"chk":0,"label":"Ultralight","slug":"ultralight-ux","repos":13},{"x":53.610485128409074,"y":0,"bp":54,"chk":0,"label":"Hyperbeam","slug":"hyperbeam","repos":11},{"x":1.4466901454111643,"y":0,"bp":0,"chk":0,"label":"hotglue","slug":"hotgluexyz","repos":198},{"x":28.760835633763246,"y":9.794454191332527,"bp":30,"chk":10,"label":"Ditto","slug":"dittowords","repos":10},{"x":9.687526559337616,"y":0,"bp":10,"chk":0,"label":"Evidently AI","slug":"evidentlyai","repos":10},{"x":28.999225791528403,"y":1.6930623971040513,"bp":30,"chk":0,"label":"Jovian","slug":"jovianhq","repos":10},{"x":29.77252298021383,"y":14.445396419047322,"bp":30,"chk":13,"label":"Bitrise","slug":"bitrise-io","repos":323},{"x":30.201301249799393,"y":0,"bp":30,"chk":0,"label":"DrDroid","slug":"drdroidlab","repos":36},{"x":21.997129873650906,"y":5.344110340319808,"bp":20,"chk":4,"label":"AssemblyAI","slug":"assemblyai","repos":24},{"x":11.875985029139006,"y":1.7054679320325103,"bp":10,"chk":0,"label":"Artillery","slug":"artilleryio","repos":19},{"x":15.394782937657222,"y":1.665244442415656,"bp":14,"chk":3,"label":"Evidence","slug":"evidence-dev","repos":28},{"x":13.942564501802874,"y":0,"bp":14,"chk":0,"label":"Okteto","slug":"okteto","repos":178},{"x":5.604161170197811,"y":0,"bp":6,"chk":0,"label":"Curvenote","slug":"curvenote","repos":59},{"x":14.515892475907664,"y":6.941235375118904,"bp":15,"chk":5,"label":"HackerRank","slug":"interviewstreet","repos":51},{"x":26.06081223268861,"y":1.1362824077942775,"bp":27,"chk":0,"label":"Pipekit","slug":"pipekit","repos":18},{"x":2.820033469356573,"y":0,"bp":3,"chk":0,"label":"Lightdash","slug":"lightdash","repos":27},{"x":8.829270563438692,"y":1.9816907579708554,"bp":7,"chk":0,"label":"Parea","slug":"parea-ai","repos":14},{"x":25.223073293622473,"y":0.873633101185304,"bp":25,"chk":0,"label":"Datasaur","slug":"datasaur-ai","repos":12},{"x":6.6191873010962565,"y":0.18683130197825681,"bp":8,"chk":1,"label":"Expo","slug":"expo","repos":214},{"x":8.874837459876636,"y":0.31672116326502486,"bp":7,"chk":0,"label":"Karate Labs","slug":"karatelabs","repos":13},{"x":7.1687808054970965,"y":5.991902241516256,"bp":7,"chk":5,"label":"Webiny","slug":"webiny","repos":99},{"x":2.2286610916299323,"y":0.33671037783588487,"bp":4,"chk":0,"label":"Nullstone","slug":"nullstone-io","repos":44},{"x":2.0114015316780542,"y":1.4108795681931414,"bp":2,"chk":0,"label":"Inkeep","slug":"inkeep","repos":42},{"x":0.629730911757933,"y":3.8431156130978015,"bp":2,"chk":2,"label":"Boundary","slug":"boundaryml","repos":40},{"x":1.3204458609623475,"y":1.7432998439228928,"bp":3,"chk":3,"label":"Draftbit","slug":"draftbit","repos":26},{"x":4.380140425800111,"y":0.7008502144163606,"bp":4,"chk":0,"label":"Firecrawl","slug":"firecrawl","repos":70},{"x":9.940815580003726,"y":0.47954645578849675,"bp":11,"chk":2,"label":"Medplum","slug":"medplum","repos":44},{"x":5.56114925651775,"y":2.9848613911544994,"bp":4,"chk":4,"label":"LiteLLM","slug":"berriai","repos":43},{"x":0.3780766141337648,"y":0.47752604132841237,"bp":0,"chk":0,"label":"Mito","slug":"mito-ds","repos":29},{"x":7.67689966134349,"y":0.3346891571648989,"bp":8,"chk":0,"label":"Cosmic","slug":"cosmicjs","repos":170},{"x":0.0911308621278355,"y":1.738825030945709,"bp":0,"chk":0,"label":"NanoNets","slug":"nanonets","repos":57},{"x":0,"y":0.8647672031576592,"bp":0,"chk":0,"label":"Velt","slug":"velt-js","repos":48},{"x":0,"y":0,"bp":0,"chk":0,"label":"Dockup","slug":"dockup","repos":24},{"x":1.686760891839885,"y":0,"bp":1,"chk":0,"label":"Cosine","slug":"cosineai","repos":58},{"x":0,"y":1.0074579696576085,"bp":0,"chk":0,"label":"Release","slug":"awesome-release","repos":43},{"x":0,"y":0,"bp":0,"chk":0,"label":"Termii","slug":"termiiwebtech","repos":15},{"x":1.9938177634177694,"y":1.9843857914203777,"bp":0,"chk":0,"label":"Jet Admin","slug":"jet-admin","repos":10}];

  var chart = new Chart(ctx, {
    type: "scatter",
    data: {
      datasets: [{
        label: "Companies",
        data: DATA,
        backgroundColor: "rgba(26, 26, 26, 0.35)",
        borderColor: "rgba(26, 26, 26, 0.5)",
        borderWidth: 0,
        pointRadius: 4.5,
        pointHoverRadius: 8,
        pointHoverBorderColor: "#1a1a1a",
        pointHoverBorderWidth: 2,
      }],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      animation: { duration: 600 },
      layout: { padding: { right: 24, top: 10 } },
      interaction: { mode: "point", intersect: true },
      onClick: function (evt, els) {
        if (!els.length) return;
        var e = els[0];
        var p = chart.data.datasets[e.datasetIndex].data[e.index];
        if (p && p.slug) window.location.href = "/scorecard/" + p.slug + "/";
      },
      onHover: function (evt, els) {
        evt.native.target.style.cursor = els.length ? "pointer" : "default";
      },
      scales: {
        x: {
          type: "linear", min: 0, max: 100,
          title: { display: true, text: "Branch protection pass rate (%)", font: { size: 13, weight: "600" }, color: "#1a1a1a" },
          ticks: { stepSize: 25, color: "#666", font: { size: 11 } },
          grid: { color: "rgba(0,0,0,0.06)" },
        },
        y: {
          type: "linear", min: 0, max: 100,
          title: { display: true, text: "Required checks pass rate (%)", font: { size: 13, weight: "600" }, color: "#1a1a1a" },
          ticks: { stepSize: 25, color: "#666", font: { size: 11 } },
          grid: { color: "rgba(0,0,0,0.06)" },
        },
      },
      plugins: {
        legend: { display: false },
        tooltip: {
          mode: "point",
          intersect: true,
          position: "nearest",
          backgroundColor: "rgba(26,26,26,0.95)",
          titleFont: { size: 13, weight: "600" },
          bodyFont: { size: 12 },
          padding: 10,
          displayColors: false,
          filter: function (item, idx) { return idx === 0; },
          callbacks: {
            title: function (items) { return items[0].raw.label; },
            label: function (item) {
              var r = item.raw;
              return ["Branch protection: " + r.bp + "%", "Required checks: " + r.chk + "%", r.repos + " repos scanned"];
            },
          },
        },
      },
    },
    plugins: [{
      id: "quadrantBg",
      beforeDatasetsDraw: function (c) {
        var x = c.scales.x, y = c.scales.y;
        var mx = x.getPixelForValue(50), my = y.getPixelForValue(50);
        var g = c.ctx;
        g.save();
        // bottom-left: most companies (84)
        g.fillStyle = "rgba(26,26,26,0.045)";
        g.fillRect(x.left, my, mx - x.left, y.bottom - my);
        // bottom-right: BP but no checks (42)
        g.fillStyle = "rgba(232,160,32,0.06)";
        g.fillRect(mx, my, x.right - mx, y.bottom - my);
        // top-right: both (2)
        g.fillStyle = "rgba(232,160,32,0.16)";
        g.fillRect(mx, y.top, x.right - mx, my - y.top);
        // top-left: empty (0) - leave untinted
        g.restore();
      },
    }, {
      id: "quadrantLines",
      beforeDatasetsDraw: function (c) {
        var x = c.scales.x, y = c.scales.y;
        var mx = x.getPixelForValue(50), my = y.getPixelForValue(50);
        var g = c.ctx;
        g.save();
        g.strokeStyle = "rgba(232,160,32,0.60)";
        g.setLineDash([4, 5]);
        g.lineWidth = 1;
        g.beginPath();
        g.moveTo(mx, y.top); g.lineTo(mx, y.bottom);
        g.moveTo(x.left, my); g.lineTo(x.right, my);
        g.stroke();
        g.restore();
      },
    }],
  });
})();
</script>

Three of the four quadrants have companies in them. The top-left is empty: required checks attach to a protected branch, so the configuration can't exist.

The top-right is the rare exception. Of the 44 companies with branch protection on most of their repos, only 2 also require a check: [Apollo](/scorecard/apollographql/) (BP 74%, Chk 58%) and [Formance](/scorecard/formancehq/) (BP 96%, Chk 61%).

That leaves 42 in the bottom-right. They enable branch protection on most of their repos without requiring any check. Every change opens a PR; nothing has to pass for the PR to merge. [Supabase](/scorecard/supabase/) is the extreme case (BP 100%, Chk 22%).

The bottom-left holds the remaining 84 companies. Branch protection isn't enabled on most of their repos, so there's no workflow to gate.

The pattern is clear across the cohort: most companies have either no gate or a workflow that doesn't enforce anything.

## See where you land

The 128 companies in the leaderboard are public-scan results. [Install Codatus on your own GitHub org](https://github.com/apps/codatus-scanner/installations/new) for a full scan, private repos included.
