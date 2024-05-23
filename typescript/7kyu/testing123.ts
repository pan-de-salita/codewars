const number = (array: string[]): string[] => {
  return array.map((line: string, idx: number) => `${idx + 1}: ${line}`);
};
