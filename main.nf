params.outdir = "results"
params.payload = "PGh0bWw+PGJvZHk+PGgxPkhlbGxvIHdvcmxkITwvaDE+PC9odG1sPgo="

process REPORT {
    publishDir "${params.outdir}", mode: 'copy'

    output:
    path("output.html")

    script:
    """
    echo "${params.payload}" | base64 -d > output.html
    """
}