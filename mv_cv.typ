#import "alta-typst.typ": alta, term, skill, styled-link

#alta(
  name: "Mike Vanbuskirk",
  links: (
    (name: "email", link: "mailto:mike@mikevanbuskirk.io"),
    (name: "website", link: "https://mikevanbuskirk.io/", display: "mikevanbuskirk.io"),
    (name: "github", link: "https://github.com/codevbus", display: "codevbus"),
    (name: "linkedin", link: "https://www.linkedin.com/in/mikevanbuskirk/", display: "Mike Vanbuskirk"),
  ),
  tagline: [DevOps Engineer],
  [
    == Experience

    === Senior DevOps Engineer \
    _RedZone Software_\
    #term[Apr 2024 --- Current][Remote | Grand Rapids, MI]
    - Deploy and manage microservice application on ECS.
    - GitOps with Pulumi and GitHub Actions.

    === Senior DevOps Engineer \
    _Truffle Security_\
    #term[Nov 2022 --- Feb 2024][Remote | Grand Rapids, MI]

    - Deployed and configured production alerting and visualizations in Grafana.
    - Configured and deployed production workloads on Kubernetes and GKE
    - Performed backend feature work in Golang.
    - Automated Google Cloud deployments with Terraform and GitHub Actions.
    - Engineered a 300% improvement in pipeline run times.

    === Senior DevOps Engineer \
    _CoinList_\
    #term[Mar 2022 --- Oct 2022][Remote | Grand Rapids, MI]

    - Deployed data warehouse infrastructure using Terraform, GitHub Actions, and AWS Redshift.
    - Assisted with SOC2 compliance and analysis for all infrastructure.

    === Lead Infrastructure Engineer \
    _Altitude Networks_\
    #term[May 2021 --- Mar 2022][Remote | Grand Rapids, MI]

    - Managed and modernized large AWS serverless infrastructure deployment with Terraform.
    - Assisted with SOC2 compliance and analysis for all infrastructure.

    === Freelance Technical Writer \
    _Self-Employed_\
    #term[May 2020 - Present][Remote | Grand Rapids, MI]

    - Developed expert-level, marketing-focused technical content on DevOps, DevSecOps, Cloud, and Software Engineering topics.
    - Implemented process automation workflows using Zapier and Integromat.
    
    === Lead DevOps Engineer \
    _Salesforce_\
    #term[Feb 2019 --- May 2021][Remote | Grand Rapids, MI]

    - Supported two, large-scale customer-facing SaaS products.
    - Designed and deployed a cost analytics ETL platform using Terraform, DynamoDB, AWS serverless, and Salesforce Einstein.

    === Senior DevOps Engineer \
    _Apptio_\
    #term[Dec 2017 --- Feb 2019][Remote | Grand Rapids, MI]

    - Supported multiple development teams in building AWS-based applications.
    - Designed and deployed multi-account IAM SSO infrastructure.

    === Senior Systems Engineer \
    _The Walt Disney Company_\
    #term[Jul 2016 --- Nov 2017][Remote | Seattle, WA]

    - Built greenfield infrastructure deployments using Chef, Terraform, Datadog, and AWS.
    - Provided operational support to Tier-1 services used by multiple Disney properties.

    ===  Operations Engineer \
    _Amazon_\
    #term[Aug 2014 --- Jul 2016][Seattle, WA]

    - Provided operational support and contributed to service infrastructure build-out of Tier-0 Amazon services like DynamoDB and AWS Shield.

    == Education

    === University \
    _Western Governors University_\
    #term[Sep 2009 --- May 2012][Salt Lake City, UT]

    BSc Networks Design & Management \

    == Skills
    AWS, Google Cloud, Terraform, Grafana, Golang, GitHub Actions, Kubernetes GitOps, Redshift, SOC2 compliance, serverless, Salesforce Einstein, Chef, Datadog, DynamoDB, Linux, Zapier, Integromat, Python, Bash, NodeJS 

    == Languages

    #skill("HCL/Terraform", 5)
    #skill("Python", 4)
    #skill("Bash", 4)
    #skill("Golang", 3)  
    #skill("NodeJS", 2)  
  ],
)
