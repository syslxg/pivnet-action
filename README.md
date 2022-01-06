# pivnet-action
GitHub Action for PivNet. based on https://github.com/pivotal-cf/pivnet-resource

## Inputs
Right now only the following parameters are supported. See https://github.com/pivotal-cf/pivnet-resource for details.

          - api_token
          - product_slug
          - endpoint
          - file_glob
          - metadata_file
          - override

## Example usage

```yaml
      - name: Upload to TanzuNet
        uses: syslxg/pivnet-action@main
        with:
          api_token: ${{ secrets.TANZUNET_API_TOKEN }}
          product_slug: p-isolation-segment
          endpoint: https://network.tanzu.vmware.com/
          file_glob:  "pivnet-release/files/*"
          metadata_file: "pivnet-release/metadata.yml"
          override: false


```


