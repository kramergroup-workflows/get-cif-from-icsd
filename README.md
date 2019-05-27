[![Build Status](https://drone-ci-kramergroup.serveo.net/api/badges/kramergroup-workflows/get-cif-from-icsd/status.svg)](https://drone-ci-kramergroup.serveo.net/kramergroup-workflows/get-cif-from-icsd)

# Obtain CIF from ICSD

This container obtains a structure in CIF format from ICSD. This requires IP-based authorisation with the 
hosting service, which measn that it will only work from within the university network.

## Usage

The container can be used as follows:

```bash
docker run --rm -v "$(pwd):/data" registry.kramergroup.science/workflows/get-cif-from-icsd:latest 50334
```

It accepts two parameters:

| Parameter      | Comment                                            |
|----------------|----------------------------------------------------|
| `structure-id` | The id of the structure in ICSD's collection       |
| `filename`     | An optional filename (defaults to `structure.cif`) |

The obtained CIF file is written to `stdout` and a file. The filename can be defined as second parameter (optional). Relative paths are written to the `/data` directory.
