# Image analysis of nuclear NRF2 localization

This repository contains ImageJ and CellProfiler workflows for quantifying NRF2 fluorescence in nuclear and cytoplasmic compartments of confocal images.

## Files

### `Macro to acquire the middle plane.ijm`

ImageJ macro used to generate the middle optical section of each cell from confocal image stacks before downstream analysis.

### `IntensityInNucleus`

CellProfiler pipeline used to segment nuclei from the DAPI channel and whole-cell boundaries from the phalloidin channel. The pipeline defines nuclear and cytoplasmic compartments and quantifies NRF2 fluorescence intensity within each compartment.

## Workflow

1. Acquire confocal image stacks containing DAPI, phalloidin and NRF2 channels.
2. Run `Macro to acquire the middle plane.ijm` in ImageJ to generate middle-plane images.
3. Import the resulting images into CellProfiler.
4. Run `IntensityInNucleus`.
5. Review segmentation masks and exclude cells with incomplete segmentation or image-edge artifacts.
6. Export nuclear and cytoplasmic NRF2 fluorescence measurements for downstream analysis.

## Software

- Fiji/ImageJ version: [v2.16.0]
- CellProfiler version: [v4.2.8]

## Contributor

Yanyan Chen, Confocal and Specialized Microscopy Shared Resource in the Herbert Irving Comprehensive Cancer Center, Columbia University Irving Medical Center: Original pipeline development and segmentation optimization. 
Lei Haley Huang, Columbia University Irving Medical Center: Pipeline adaptation and validation.

## Data availability

This repository contains analysis workflows only. Raw microscopy images are not included.
