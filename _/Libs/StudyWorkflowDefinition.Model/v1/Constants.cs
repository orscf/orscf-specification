using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.ObjectModel;
using System.Collections.Generic;

namespace MedicalResearch.Workflow.Model {

  /// <summary>
  /// provides constants for specifying a (Re)SchedulingOffsetFixpoint
  /// </summary>
  public static class OffsetFixpoint {

    /// <summary>
    ///   SCHEDULING OF INDUCEMENTS: when the start of the parent Schedule (for the current cycle) was induced / 
    ///   RE-SCHEDULING OF CYLCLES: when the start of the last cycle was induced
    /// </summary>
    public const int StartOfScheduleOrCycle = 0;

    /// <summary>
    ///   SCHEDULING OF INDUCEMENTS: when the direct predecessor (based on the 'Position') within the current schedule was completed / 
    ///   RE-SCHEDULING OF CYLCLES: when the last cycle was completed (which means, that the last item within the schedule or a sub-schedule was completed)
    ///   *this behaviour can be concretized via '(Re)SchedulingByEstimate'
    /// </summary>
    public const int CompletionOfPredessessor = -1;

  }

}
