# Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
# This software is released under the MIT License, see LICENSE.

from pathlib import Path

def mkdir_empty(p: Path) -> None:
  if p.exists():
    if p.is_dir():
      import shutil
      shutil.rmtree(p.as_posix())
    else:
      raise FileExistsError(
        f'The path already exists as a file: {p.as_posix()}'
        )
  p.mkdir()

def export_as_png(
    fpath_src: Path, 
    dpath_tgt: Path, 
    grayscale: bool=False
    ) -> None:
  import pdf2image
  images = pdf2image.convert_from_path(
    fpath_src.as_posix(), 
    grayscale=grayscale
    )
  for idx, image in enumerate(images):
    path_tgt = dpath_tgt / f'{idx:03}.png'
    image.save(path_tgt.as_posix(), 'png')

def main() -> None:
  from sys import argv
  from ast import literal_eval
  assert len(argv) == 3
  fpath_src = Path(argv[1])
  grayscale = bool(literal_eval(argv[2]))
  dpath_tgt = fpath_src.with_suffix('.imgpack')
  mkdir_empty(dpath_tgt)
  export_as_png(
    fpath_src, 
    dpath_tgt, 
    grayscale=grayscale
    )

if __name__ == '__main__':
  main()
