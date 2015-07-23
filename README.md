# appcanary-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['appcanary']['agent']['api_key']</tt></td>
    <td>String</td>
    <td>API Key (comes from appcanary)</td>
    <td><tt>xxxxxxxxx*</tt></td>
  </tr>
</table>

## Usage

### appcanary::default

Include `appcanary` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[appcanary::default]"
  ]
}
```

## License and Authors

Author:: Justin Alan Ryan (<bitmonk@icloud.com>)
