# .github

Reusable GitHub Actions workflows and custom actions *primarily* for internal use.

## Disclaimer

These workflows and actions are provided **as-is**, with no warranty or support. Use at your own risk; the author disclaims all liability to the fullest extent permitted by applicable law. See `LICENSE` for the formal terms.

## Usage

Call reusable workflows from another repository like this:

```yaml
    jobs:
      example:
        uses: s4-retail-solutions/.github/.github/workflows/example-workflow@9c1e1a7f8f3827b11fb9eb34ab0a21afde30e19c
        with:
          foo: bar
```

Call actions from another repository like this:

```yaml
    steps:
      - name: Run action
        uses: s4-retail-solutions/.github/actions/example-action@9c1e1a7f8f3827b11fb9eb34ab0a21afde30e19c
        with:
          foo: bar
```

### Pinning

**Always pin** to an immutable ref (such as the full commit SHA) to avoid unexpected drift.

## Structure

- `.github/workflows/` — reusable workflows (`on: workflow_call`)
- `actions/` — custom actions
- `LICENSE` — permissive license with disclaimer (e.g., MIT)

## Support

No formal support is provided. If you rely on these in automation, review and pin responsibly.
