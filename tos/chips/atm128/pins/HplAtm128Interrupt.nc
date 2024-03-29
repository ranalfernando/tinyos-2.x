/// $Id: HplAtm128Interrupt.nc,v 1.5 2010/06/29 22:07:43 scipio Exp $

/* Copyright (c) 2000-2003 The Regents of the University of California.  
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * - Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the
 *   distribution.
 * - Neither the name of the copyright holder nor the names of
 *   its contributors may be used to endorse or promote products derived
 *   from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
 * THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * Interface to an Atmega128 external interrupt pin
 *
 * @author Joe Polastre
 * @author Martin Turon
 */

interface HplAtm128Interrupt
{
  /** 
   * Enables ATmega128 hardware interrupt on a particular port
   */
  async command void enable();

  /** 
   * Disables ATmega128 hardware interrupt on a particular port
   */
  async command void disable();

  /** 
   * Clears the ATmega128 Interrupt Pending Flag for a particular port
   */
  async command void clear();

  /** 
   * Gets the current value of the input voltage of a port
   *
   * @return TRUE if the pin is set high, FALSE if it is set low
   */
  async command bool getValue();

  /** 
   * Sets whether the edge should be high to low or low to high.
   * @param TRUE if the interrupt should be triggered on a low to high
   *        edge transition, false for interrupts on a high to low transition
   */
  async command void edge(bool low_to_high);

  /**
   * Signalled when an interrupt occurs on a port
   */
  async event void fired();
}
