 <h1 dir="auto"><a id="user-content-awesome-substrate-" class="anchor" aria-hidden="true" href="#awesome-substrate-"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Gitlab CI/CD Automation for Creating Blockchain Nodes <a href="https://awesome.re" rel="nofollow"><img src="https://camo.githubusercontent.com/3cbfaa1f947ec978205547180a7363399d2aec652c87f91cf4a6f1f332ca610b/68747470733a2f2f617765736f6d652e72652f62616467652d666c61742e737667" alt="Awesome" data-canonical-src="https://awesome.re/badge-flat.svg" style="max-width: 100%;"></a></h1>                 
<br/>

<blockquote>
<p dir="auto">
Please use this project as an example to learn from, about making automation by CI/CD not to use as a reference to creating the latest APTOS blockchain node. Basis for starting working with the CI/CD automation intended to go to production. APTOS blockchain may get upgrade so the repository code will not support the latest node code.</p>
</blockquote>

#### Lets get dig into the codes <g-emoji class="g-emoji" alias="rocket" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f680.png">🚀</g-emoji>

1- This <code>/.gitlab-ci.yaml/</code> template allows you to automate creation of a container. For this template I used Rancher. After running this template you will be
able to deploy the container. Once deployment finished successfully you can see the logs and monitor it by the Rancher.

#### Predefined CI/CD Variables?

You can pass environment variables from one job to another job in a later stage through variable inheritance. These variables cannot be used as CI/CD variables to configure a pipeline, but they can be used in job scripts.

* <code>CI_COMMIT_SHA</code> variable means: The commit revision for which project is built
* I am using this <code>$CI_COMMIT_SHORT_SHA</code> variable into <code>docker-compose</code> which means: The first eight characters of <code>CI_COMMIT_SHA</code>. By this I wanted to use <code>CI_COMMIT_SHORT_SHA</code> as part of directory name which were later pushed to the server by rsync. It should have returned short hash from current commit.
* <code>$CI_JOB_NAME</code> targets the job that need to be run by this config file.                                          
* <code>CI_JOB_TOKEN</code> : Token used for authenticating with GitLab Container Registry, downloading dependent repositories, authenticate with multi-project pipelines when triggers are involved, and for downloading job artifacts.                                            
* <code>$CI_REGISTRY</code> : I will return by this the address of GitLab's Container Registry.
* <code>$CI_REGISTRY_IMAGE</code> : With GitLab, you can add a job to your pipeline to build Docker images, and push them to the built-in container registry. You can set to use previous image as a cache to speedup build process.
* <code>$CI_PROJECT_DIR</code> : The full path where the repository is cloned and where the job is run.

<p dir="auto">More info can be found in <a href="https://gitlab.pavlovia.org/help/ci/variables/README.md"><code>docs/predefined/CI/CD variables</code></a>.</p>

