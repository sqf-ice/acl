SECTIONS
{
  . = 0x0;
  .text :
  {
    obj/board/lpc213x/startup.o (.text)
    *(.text)
  }
  .data :
  {
    *(.data)
    *(.bss)
    *(COMMON)
  }
  . = ALIGN(8);
  . = . + 0x1000; /* 4kB of stack memory */
  stack_top = .;
}
