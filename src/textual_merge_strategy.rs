use clap::ValueEnum;

/// Choose between the possible unstructured merge strategies
#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord, ValueEnum, Debug)]
pub enum TextualMergeStrategy {
    Structured, // default structured merge
    /// semistructured merge options
    Diff3, 
}